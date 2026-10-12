variable "tasks" {
  description = <<EOT
Map of tasks, attributes below
Required:
    - database
    - name
    - schema
    - sql_statement
    - started
Optional:
    - abort_detached_query
    - after
    - allow_overlapping_execution
    - autocommit
    - binary_input_format
    - binary_output_format
    - client_memory_limit
    - client_metadata_request_use_connection_ctx
    - client_prefetch_threads
    - client_result_chunk_size
    - client_result_column_case_insensitive
    - client_session_keep_alive
    - client_session_keep_alive_heartbeat_frequency
    - client_timestamp_type_mapping
    - comment
    - config
    - date_input_format
    - date_output_format
    - enable_unload_physical_type_optimization
    - error_integration
    - error_on_nondeterministic_merge
    - error_on_nondeterministic_update
    - finalize
    - geography_output_format
    - geometry_output_format
    - jdbc_treat_timestamp_ntz_as_utc
    - jdbc_use_session_timezone
    - json_indent
    - lock_timeout
    - log_event_level
    - log_level
    - multi_statement_count
    - noorder_sequence_as_default
    - odbc_treat_decimal_as_int
    - query_tag
    - quoted_identifiers_ignore_case
    - rows_per_resultset
    - s3_stage_vpce_dns_name
    - search_path
    - serverless_task_max_statement_size
    - serverless_task_min_statement_size
    - statement_queued_timeout_in_seconds
    - statement_timeout_in_seconds
    - strict_json_output
    - suspend_task_after_num_failures
    - task_auto_retry_attempts
    - time_input_format
    - time_output_format
    - timestamp_day_is_always_24h
    - timestamp_input_format
    - timestamp_ltz_output_format
    - timestamp_ntz_output_format
    - timestamp_output_format
    - timestamp_type_mapping
    - timestamp_tz_output_format
    - timezone
    - trace_level
    - transaction_abort_on_error
    - transaction_default_isolation_level
    - two_digit_century_start
    - unsupported_ddl_action
    - use_cached_result
    - user_task_managed_initial_warehouse_size
    - user_task_minimum_trigger_interval_in_seconds
    - user_task_timeout_ms
    - warehouse
    - week_of_year_policy
    - week_start
    - when
    - schedule (block):
        - hours (optional)
        - minutes (optional)
        - seconds (optional)
        - using_cron (optional)
    - target_completion_interval (block):
        - hours (optional)
        - minutes (optional)
        - seconds (optional)
    - timeouts (block):
        - create (optional)
        - delete (optional)
        - read (optional)
        - update (optional)
EOT

  type = map(object({
    database                                      = string
    name                                          = string
    schema                                        = string
    sql_statement                                 = string
    started                                       = bool
    abort_detached_query                          = optional(bool)
    after                                         = optional(set(string))
    allow_overlapping_execution                   = optional(string)
    autocommit                                    = optional(bool)
    binary_input_format                           = optional(string)
    binary_output_format                          = optional(string)
    client_memory_limit                           = optional(number)
    client_metadata_request_use_connection_ctx    = optional(bool)
    client_prefetch_threads                       = optional(number)
    client_result_chunk_size                      = optional(number)
    client_result_column_case_insensitive         = optional(bool)
    client_session_keep_alive                     = optional(bool)
    client_session_keep_alive_heartbeat_frequency = optional(number)
    client_timestamp_type_mapping                 = optional(string)
    comment                                       = optional(string)
    config                                        = optional(string)
    date_input_format                             = optional(string)
    date_output_format                            = optional(string)
    enable_unload_physical_type_optimization      = optional(bool)
    error_integration                             = optional(string)
    error_on_nondeterministic_merge               = optional(bool)
    error_on_nondeterministic_update              = optional(bool)
    finalize                                      = optional(string)
    geography_output_format                       = optional(string)
    geometry_output_format                        = optional(string)
    jdbc_treat_timestamp_ntz_as_utc               = optional(bool)
    jdbc_use_session_timezone                     = optional(bool)
    json_indent                                   = optional(number)
    lock_timeout                                  = optional(number)
    log_event_level                               = optional(string)
    log_level                                     = optional(string)
    multi_statement_count                         = optional(number)
    noorder_sequence_as_default                   = optional(bool)
    odbc_treat_decimal_as_int                     = optional(bool)
    query_tag                                     = optional(string)
    quoted_identifiers_ignore_case                = optional(bool)
    rows_per_resultset                            = optional(number)
    s3_stage_vpce_dns_name                        = optional(string)
    search_path                                   = optional(string)
    serverless_task_max_statement_size            = optional(string)
    serverless_task_min_statement_size            = optional(string)
    statement_queued_timeout_in_seconds           = optional(number)
    statement_timeout_in_seconds                  = optional(number)
    strict_json_output                            = optional(bool)
    suspend_task_after_num_failures               = optional(number)
    task_auto_retry_attempts                      = optional(number)
    time_input_format                             = optional(string)
    time_output_format                            = optional(string)
    timestamp_day_is_always_24h                   = optional(bool)
    timestamp_input_format                        = optional(string)
    timestamp_ltz_output_format                   = optional(string)
    timestamp_ntz_output_format                   = optional(string)
    timestamp_output_format                       = optional(string)
    timestamp_type_mapping                        = optional(string)
    timestamp_tz_output_format                    = optional(string)
    timezone                                      = optional(string)
    trace_level                                   = optional(string)
    transaction_abort_on_error                    = optional(bool)
    transaction_default_isolation_level           = optional(string)
    two_digit_century_start                       = optional(number)
    unsupported_ddl_action                        = optional(string)
    use_cached_result                             = optional(bool)
    user_task_managed_initial_warehouse_size      = optional(string)
    user_task_minimum_trigger_interval_in_seconds = optional(number)
    user_task_timeout_ms                          = optional(number)
    warehouse                                     = optional(string)
    week_of_year_policy                           = optional(number)
    week_start                                    = optional(number)
    when                                          = optional(string)
    schedule = optional(object({
      hours      = optional(number)
      minutes    = optional(number)
      seconds    = optional(number)
      using_cron = optional(string)
    }))
    target_completion_interval = optional(object({
      hours   = optional(number)
      minutes = optional(number)
      seconds = optional(number)
    }))
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
      read   = optional(string)
      update = optional(string)
    }))
  }))
}

