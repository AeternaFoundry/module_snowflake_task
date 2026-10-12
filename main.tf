resource "snowflake_task" "tasks" {
  for_each = var.tasks

  database                                      = each.value.database
  name                                          = each.value.name
  schema                                        = each.value.schema
  sql_statement                                 = each.value.sql_statement
  started                                       = each.value.started
  abort_detached_query                          = each.value.abort_detached_query
  after                                         = each.value.after
  allow_overlapping_execution                   = each.value.allow_overlapping_execution
  autocommit                                    = each.value.autocommit
  binary_input_format                           = each.value.binary_input_format
  binary_output_format                          = each.value.binary_output_format
  client_memory_limit                           = each.value.client_memory_limit
  client_metadata_request_use_connection_ctx    = each.value.client_metadata_request_use_connection_ctx
  client_prefetch_threads                       = each.value.client_prefetch_threads
  client_result_chunk_size                      = each.value.client_result_chunk_size
  client_result_column_case_insensitive         = each.value.client_result_column_case_insensitive
  client_session_keep_alive                     = each.value.client_session_keep_alive
  client_session_keep_alive_heartbeat_frequency = each.value.client_session_keep_alive_heartbeat_frequency
  client_timestamp_type_mapping                 = each.value.client_timestamp_type_mapping
  comment                                       = each.value.comment
  config                                        = each.value.config
  date_input_format                             = each.value.date_input_format
  date_output_format                            = each.value.date_output_format
  enable_unload_physical_type_optimization      = each.value.enable_unload_physical_type_optimization
  error_integration                             = each.value.error_integration
  error_on_nondeterministic_merge               = each.value.error_on_nondeterministic_merge
  error_on_nondeterministic_update              = each.value.error_on_nondeterministic_update
  finalize                                      = each.value.finalize
  geography_output_format                       = each.value.geography_output_format
  geometry_output_format                        = each.value.geometry_output_format
  jdbc_treat_timestamp_ntz_as_utc               = each.value.jdbc_treat_timestamp_ntz_as_utc
  jdbc_use_session_timezone                     = each.value.jdbc_use_session_timezone
  json_indent                                   = each.value.json_indent
  lock_timeout                                  = each.value.lock_timeout
  log_event_level                               = each.value.log_event_level
  log_level                                     = each.value.log_level
  multi_statement_count                         = each.value.multi_statement_count
  noorder_sequence_as_default                   = each.value.noorder_sequence_as_default
  odbc_treat_decimal_as_int                     = each.value.odbc_treat_decimal_as_int
  query_tag                                     = each.value.query_tag
  quoted_identifiers_ignore_case                = each.value.quoted_identifiers_ignore_case
  rows_per_resultset                            = each.value.rows_per_resultset
  s3_stage_vpce_dns_name                        = each.value.s3_stage_vpce_dns_name
  search_path                                   = each.value.search_path
  serverless_task_max_statement_size            = each.value.serverless_task_max_statement_size
  serverless_task_min_statement_size            = each.value.serverless_task_min_statement_size
  statement_queued_timeout_in_seconds           = each.value.statement_queued_timeout_in_seconds
  statement_timeout_in_seconds                  = each.value.statement_timeout_in_seconds
  strict_json_output                            = each.value.strict_json_output
  suspend_task_after_num_failures               = each.value.suspend_task_after_num_failures
  task_auto_retry_attempts                      = each.value.task_auto_retry_attempts
  time_input_format                             = each.value.time_input_format
  time_output_format                            = each.value.time_output_format
  timestamp_day_is_always_24h                   = each.value.timestamp_day_is_always_24h
  timestamp_input_format                        = each.value.timestamp_input_format
  timestamp_ltz_output_format                   = each.value.timestamp_ltz_output_format
  timestamp_ntz_output_format                   = each.value.timestamp_ntz_output_format
  timestamp_output_format                       = each.value.timestamp_output_format
  timestamp_type_mapping                        = each.value.timestamp_type_mapping
  timestamp_tz_output_format                    = each.value.timestamp_tz_output_format
  timezone                                      = each.value.timezone
  trace_level                                   = each.value.trace_level
  transaction_abort_on_error                    = each.value.transaction_abort_on_error
  transaction_default_isolation_level           = each.value.transaction_default_isolation_level
  two_digit_century_start                       = each.value.two_digit_century_start
  unsupported_ddl_action                        = each.value.unsupported_ddl_action
  use_cached_result                             = each.value.use_cached_result
  user_task_managed_initial_warehouse_size      = each.value.user_task_managed_initial_warehouse_size
  user_task_minimum_trigger_interval_in_seconds = each.value.user_task_minimum_trigger_interval_in_seconds
  user_task_timeout_ms                          = each.value.user_task_timeout_ms
  warehouse                                     = each.value.warehouse
  week_of_year_policy                           = each.value.week_of_year_policy
  week_start                                    = each.value.week_start
  when                                          = each.value.when

  dynamic "schedule" {
    for_each = each.value.schedule != null ? [each.value.schedule] : []
    content {
      hours      = schedule.value.hours
      minutes    = schedule.value.minutes
      seconds    = schedule.value.seconds
      using_cron = schedule.value.using_cron
    }
  }

  dynamic "target_completion_interval" {
    for_each = each.value.target_completion_interval != null ? [each.value.target_completion_interval] : []
    content {
      hours   = target_completion_interval.value.hours
      minutes = target_completion_interval.value.minutes
      seconds = target_completion_interval.value.seconds
    }
  }

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
      delete = timeouts.value.delete
      read   = timeouts.value.read
      update = timeouts.value.update
    }
  }
}

