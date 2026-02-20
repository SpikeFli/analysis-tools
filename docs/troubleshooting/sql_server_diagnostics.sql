/*
SQL Server diagnostics: active requests, blocking, open transactions, log space, and waits.
- Replace YourDatabaseName if not using the current DB context.
- Run sections in order.
*/

-- 0) Use target database (optional)
-- USE [YourDatabaseName];
GO

-------------------------------------------------------------------------------
-- 1) Is there an open transaction? (common cause of system-wide slowness)
-------------------------------------------------------------------------------
DBCC OPENTRAN; -- shows the oldest active transaction in the current DB
GO

SELECT at.transaction_id,
       at.name,
       at.transaction_begin_time,
       at.transaction_type,
       at.transaction_state,
       s.session_id,
       s.login_name,
       s.host_name,
       s.program_name
FROM sys.dm_tran_active_transactions at
JOIN sys.dm_tran_session_transactions stx ON at.transaction_id = stx.transaction_id
JOIN sys.dm_exec_sessions s ON stx.session_id = s.session_id
ORDER BY at.transaction_begin_time;
GO

-------------------------------------------------------------------------------
-- 2) Active requests and blockers
-------------------------------------------------------------------------------
SELECT r.session_id,
       s.login_name,
       s.host_name,
       s.program_name,
       DB_NAME(r.database_id) AS database_name,
       r.status,
       r.command,
       r.blocking_session_id,
       r.cpu_time,
       r.total_elapsed_time,
       r.wait_type,
       r.wait_time,
       r.wait_resource,
       r.logical_reads,
       r.writes,
       t.transaction_id,
       SUBSTRING(st.text, (r.statement_start_offset/2)+1,
                 CASE r.statement_end_offset WHEN -1 THEN (DATALENGTH(st.text)/2)
                 ELSE (r.statement_end_offset - r.statement_start_offset)/2 END) AS running_statement,
       st.text AS batch_text
FROM sys.dm_exec_requests r
JOIN sys.dm_exec_sessions s ON r.session_id = s.session_id
LEFT JOIN sys.dm_tran_session_transactions t ON r.session_id = t.session_id
OUTER APPLY sys.dm_exec_sql_text(r.sql_handle) st
WHERE r.session_id <> @@SPID
ORDER BY r.total_elapsed_time DESC;
GO

-------------------------------------------------------------------------------
-- 3) Current locks (helps identify what is being held/blocked)
-------------------------------------------------------------------------------
SELECT request_session_id AS session_id,
       resource_type,
       DB_NAME(resource_database_id) AS database_name,
       request_mode,
       request_status,
       resource_associated_entity_id AS resource_id
FROM sys.dm_tran_locks
WHERE resource_database_id = DB_ID()
ORDER BY request_session_id;
GO

-------------------------------------------------------------------------------
-- 4) Who is waiting on whom? (waiting tasks)
-------------------------------------------------------------------------------
SELECT wt.session_id,
       wt.wait_type,
       wt.wait_duration_ms,
       wt.blocking_session_id,
       wt.resource_description
FROM sys.dm_os_waiting_tasks wt
WHERE wt.session_id IN (SELECT session_id FROM sys.dm_exec_sessions WHERE is_user_process = 1)
ORDER BY wt.wait_duration_ms DESC;
GO

-------------------------------------------------------------------------------
-- 5) Transaction log usage (full log can stall writes)
-------------------------------------------------------------------------------
DBCC SQLPERF(LOGSPACE);
GO

-- For SQL Server 2019+:
SELECT DB_NAME(database_id) AS database_name,
       total_log_size_mb,
       used_log_space_mb,
       used_log_space_percent
FROM sys.dm_db_log_space_usage;
GO

-------------------------------------------------------------------------------
-- 6) If this was run via SQL Agent, show running jobs
-------------------------------------------------------------------------------
IF DB_ID('msdb') IS NOT NULL
BEGIN
    SELECT ja.session_id,
           j.name AS job_name,
           ja.start_execution_date,
           ja.stop_execution_date,
           ja.run_requested_date,
           ja.last_executed_step_id,
           ja.run_requested_source
    FROM msdb.dbo.sysjobactivity ja
    JOIN msdb.dbo.sysjobs j ON j.job_id = ja.job_id
    WHERE ja.stop_execution_date IS NULL;
END
GO

-------------------------------------------------------------------------------
-- 7) Targeted verification for your reassignment script (adjust as needed)
-------------------------------------------------------------------------------
SELECT COUNT(*) AS total_reassignments
FROM C_0000000096_ServiceDetails
WHERE UserRef_Type = 'AD Fix'
  AND DateRef IN ('202601','202512');
GO

SELECT TOP 10 AssetID, Username, UserRef_Type, DateRef
FROM C_0000000096_ServiceDetails
WHERE UserRef_Type = 'AD Fix'
  AND DateRef IN ('202601','202512')
ORDER BY AssetID;
GO

/*
Next steps based on findings:
- If DBCC OPENTRAN shows an open transaction from your session, COMMIT from that same session; otherwise KILL the blocking session_id to rollback.
- If there is a blocker (blocking_session_id <> 0), investigate its batch_text above and decide to wait or KILL <session_id>.
- If log is nearly 100% full, back up the log (FULL/BULK_LOGGED recovery) or add log space.
*/
