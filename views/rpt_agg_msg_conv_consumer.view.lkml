view: rpt_agg_msg_conv_consumer {
  sql_table_name: `LP_RAW.RPT_AGG_MSG_CONV_CONSUMER`
    ;;

  dimension: account_id {
    type: string
    sql: ${TABLE}.account_id ;;
  }

  dimension_group: analysis {
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
    sql: ${TABLE}.analysis_date ;;
  }

  dimension: app_installation_id {
    type: string
    sql: ${TABLE}.app_installation_id ;;
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

  dimension: campaign_id {
    type: number
    sql: ${TABLE}.campaign_id ;;
  }

  dimension: closed_by_consumer {
    type: number
    sql: ${TABLE}.closed_by_consumer ;;
  }

  dimension: consumer_browser {
    type: number
    sql: ${TABLE}.consumer_browser ;;
  }

  dimension: consumer_id {
    type: string
    sql: ${TABLE}.consumer_id ;;
  }

  dimension: consumer_messages {
    type: number
    sql: ${TABLE}.consumer_messages ;;
  }

  dimension: consumer_messages_2agent {
    type: number
    sql: ${TABLE}.consumer_messages_2agent ;;
  }

  dimension: consumer_os {
    type: number
    sql: ${TABLE}.consumer_os ;;
  }

  dimension: consumer_response_time_days {
    type: number
    sql: ${TABLE}.consumer_response_time_days ;;
  }

  dimension: consumer_responses {
    type: number
    sql: ${TABLE}.consumer_responses ;;
  }

  dimension_group: conv_end {
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
    sql: ${TABLE}.conv_end_time ;;
  }

  dimension: conv_id {
    type: string
    sql: ${TABLE}.conv_id ;;
  }

  dimension: conv_skill_id {
    type: number
    sql: ${TABLE}.conv_skill_id ;;
  }

  dimension_group: conv_start {
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
    sql: ${TABLE}.conv_start_time ;;
  }

  dimension: conv_state_id {
    type: number
    sql: ${TABLE}.conv_state_id ;;
  }

  dimension: csat {
    type: number
    sql: ${TABLE}.csat ;;
  }

  dimension: engagement_id {
    type: number
    sql: ${TABLE}.engagement_id ;;
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

  dimension: first_conv_ind {
    type: number
    sql: ${TABLE}.first_conv_ind ;;
  }

  dimension: handler_id {
    type: string
    sql: ${TABLE}.handler_id ;;
  }

  dimension: initial_device_id {
    type: number
    sql: ${TABLE}.initial_device_id ;;
  }

  dimension: integration_source_id {
    type: number
    sql: ${TABLE}.integration_source_id ;;
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

  dimension: lob_id {
    type: number
    sql: ${TABLE}.lob_id ;;
  }

  dimension: mcs {
    type: number
    sql: ${TABLE}.mcs ;;
  }

  dimension: md5_key {
    type: string
    sql: ${TABLE}.md5_key ;;
  }

  dimension: opened_by_consumer {
    type: number
    sql: ${TABLE}.opened_by_consumer ;;
  }

  dimension: provider_id {
    type: string
    sql: ${TABLE}.provider_id ;;
  }

  dimension: reference_name {
    type: string
    sql: ${TABLE}.reference_name ;;
  }

  dimension: resolution_rate {
    type: number
    sql: ${TABLE}.resolution_rate ;;
  }

  dimension: software_id {
    type: string
    sql: ${TABLE}.software_id ;;
  }

  dimension: source_files {
    type: string
    sql: ${TABLE}.source_files ;;
  }

  dimension_group: survey_fill {
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
    sql: ${TABLE}.survey_fill_date ;;
  }

  dimension: survey_submit_status_id {
    type: number
    sql: ${TABLE}.survey_submit_status_id ;;
  }

  dimension: window_end_timestamp {
    type: number
    sql: ${TABLE}.window_end_timestamp ;;
  }

  measure: count {
    type: count
    drill_fields: [reference_name, job_name]
  }
}
