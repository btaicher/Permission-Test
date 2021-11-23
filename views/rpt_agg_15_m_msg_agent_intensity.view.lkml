view: rpt_agg_15_m_msg_agent_intensity {
  sql_table_name: `LP_RAW.RPT_AGG_15M_MSG_AGENT_INTENSITY`
    ;;

  dimension: account_id {
    type: string
    sql: ${TABLE}.account_id ;;
  }

  dimension: active_conversation {
    type: number
    sql: ${TABLE}.active_conversation ;;
  }

  dimension: active_conversation_ratio {
    type: number
    sql: ${TABLE}.active_conversation_ratio ;;
  }

  dimension: agent_id {
    type: string
    sql: ${TABLE}.agent_id ;;
  }

  dimension_group: agg {
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
    sql: ${TABLE}.agg_date ;;
  }

  dimension: assigned_conversation {
    type: number
    sql: ${TABLE}.assigned_conversation ;;
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

  dimension: count_active_conversation_ratio {
    type: number
    sql: ${TABLE}.count_active_conversation_ratio ;;
  }

  dimension_group: etl_insert {
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
    sql: ${TABLE}.etl_insert_time ;;
  }

  dimension: farm_id {
    type: number
    sql: ${TABLE}.farm_id ;;
  }

  dimension: group_id {
    type: number
    sql: ${TABLE}.group_id ;;
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

  dimension: max_conversation_load_rate {
    type: number
    sql: ${TABLE}.max_conversation_load_rate ;;
  }

  dimension: max_slots {
    type: number
    sql: ${TABLE}.max_slots ;;
  }

  dimension: md5_key {
    type: string
    sql: ${TABLE}.md5_key ;;
  }

  dimension: min_conversation_load_rate {
    type: number
    sql: ${TABLE}.min_conversation_load_rate ;;
  }

  dimension: no_events {
    type: number
    sql: ${TABLE}.no_events ;;
  }

  dimension: source_files {
    type: string
    sql: ${TABLE}.source_files ;;
  }

  dimension: state_id {
    type: number
    sql: ${TABLE}.state_id ;;
  }

  dimension: sum_conversation_load_rate {
    type: number
    sql: ${TABLE}.sum_conversation_load_rate ;;
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
