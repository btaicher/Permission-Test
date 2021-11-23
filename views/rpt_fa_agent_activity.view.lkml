view: rpt_fa_agent_activity {
  sql_table_name: `LP_RAW.RPT_FA_AGENT_ACTIVITY`
    ;;

  dimension: account_id {
    type: string
    sql: ${TABLE}.account_id ;;
  }

  dimension: agent_group_id {
    type: number
    sql: ${TABLE}.agent_group_id ;;
  }

  dimension: agent_id {
    type: string
    sql: ${TABLE}.agent_id ;;
  }

  dimension_group: bqetl_create {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.bqetl_create_time ;;
  }

  dimension: bqetl_jobid {
    type: string
    sql: ${TABLE}.bqetl_jobid ;;
  }

  dimension_group: bqetl_update {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.bqetl_update_time ;;
  }

  dimension_group: change_event {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.change_event_time ;;
  }

  dimension_group: change_event_time_15m {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.change_event_time_15m ;;
  }

  dimension: change_indicator {
    type: number
    sql: ${TABLE}.change_indicator ;;
  }

  dimension: channel_id {
    type: number
    sql: ${TABLE}.channel_id ;;
  }

  dimension: concurrent_eng {
    type: string
    sql: ${TABLE}.concurrent_eng ;;
  }

  dimension: duration_days {
    type: number
    sql: ${TABLE}.duration_days ;;
  }

  dimension: event_id {
    type: string
    sql: ${TABLE}.event_id ;;
  }

  dimension: event_time {
    type: number
    sql: ${TABLE}.event_time ;;
  }

  dimension: farm_id {
    type: number
    sql: ${TABLE}.farm_id ;;
  }

  dimension_group: hadoop {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.hadoop_time ;;
  }

  dimension: job_id {
    type: string
    sql: ${TABLE}.job_id ;;
  }

  dimension: job_name {
    type: string
    sql: ${TABLE}.job_name ;;
  }

  dimension: job_version {
    type: string
    sql: ${TABLE}.job_version ;;
  }

  dimension_group: last_event {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.last_event_time ;;
  }

  dimension: max_allowed_concurrent_eng {
    type: number
    sql: ${TABLE}.max_allowed_concurrent_eng ;;
  }

  dimension: md5_key {
    type: string
    sql: ${TABLE}.md5_key ;;
  }

  dimension: prev_chatting_state_ind {
    type: number
    sql: ${TABLE}.prev_chatting_state_ind ;;
  }

  dimension: prev_concurrent_eng {
    type: number
    sql: ${TABLE}.prev_concurrent_eng ;;
  }

  dimension: prev_repactivity_event_time {
    type: number
    sql: ${TABLE}.prev_repactivity_event_time ;;
  }

  dimension: prev_repsession_event_time {
    type: number
    sql: ${TABLE}.prev_repsession_event_time ;;
  }

  dimension: prev_state_id {
    type: number
    sql: ${TABLE}.prev_state_id ;;
  }

  dimension: prev_state_reason_id {
    type: string
    sql: ${TABLE}.prev_state_reason_id ;;
  }

  dimension: rep_session_id {
    type: number
    sql: ${TABLE}.rep_session_id ;;
  }

  dimension: sequence_number {
    type: number
    sql: ${TABLE}.sequence_number ;;
  }

  dimension: source_files {
    type: string
    sql: ${TABLE}.source_files ;;
  }

  dimension: state_id {
    type: number
    sql: ${TABLE}.state_id ;;
  }

  dimension: state_reason_id {
    type: string
    sql: ${TABLE}.state_reason_id ;;
  }

  dimension: user_type_id {
    type: number
    sql: ${TABLE}.user_type_id ;;
  }

  dimension: window_end_timestamp {
    type: number
    sql: ${TABLE}.window_end_timestamp ;;
  }

  measure: count {
    type: count
    drill_fields: [job_name]
  }
}
