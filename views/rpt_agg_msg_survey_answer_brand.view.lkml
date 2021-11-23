view: rpt_agg_msg_survey_answer_brand {
  sql_table_name: `LP_RAW.RPT_AGG_MSG_SURVEY_ANSWER_BRAND`
    ;;

  dimension: account_id {
    type: string
    sql: ${TABLE}.account_id ;;
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

  dimension: answer_count {
    type: number
    sql: ${TABLE}.answer_count ;;
  }

  dimension: answer_dur_days {
    type: number
    sql: ${TABLE}.answer_dur_days ;;
  }

  dimension: answer_id {
    type: string
    sql: ${TABLE}.answer_id ;;
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

  dimension: initial_device_id {
    type: number
    sql: ${TABLE}.initial_device_id ;;
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

  dimension: md5_key {
    type: string
    sql: ${TABLE}.md5_key ;;
  }

  dimension: population_code {
    type: string
    sql: ${TABLE}.population_code ;;
  }

  dimension: question_group_id {
    type: string
    sql: ${TABLE}.question_group_id ;;
  }

  dimension: question_id {
    type: string
    sql: ${TABLE}.question_id ;;
  }

  dimension: skill_id {
    type: number
    sql: ${TABLE}.skill_id ;;
  }

  dimension: software_id {
    type: string
    sql: ${TABLE}.software_id ;;
  }

  dimension: source_files {
    type: string
    sql: ${TABLE}.source_files ;;
  }

  dimension: survey_id {
    type: string
    sql: ${TABLE}.survey_id ;;
  }

  dimension: valid_answer_ind {
    type: number
    sql: ${TABLE}.valid_answer_ind ;;
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
