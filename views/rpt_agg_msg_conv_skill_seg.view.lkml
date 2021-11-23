view: rpt_agg_msg_conv_skill_seg {
  sql_table_name: `LP_RAW.RPT_AGG_MSG_CONV_SKILL_SEG`
    ;;

  dimension: abandoned_skill_in_queue_ind {
    type: number
    sql: ${TABLE}.abandoned_skill_in_queue_ind ;;
  }

  dimension: abandoned_skill_ind {
    type: number
    sql: ${TABLE}.abandoned_skill_ind ;;
  }

  dimension: account_id {
    type: string
    sql: ${TABLE}.account_id ;;
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

  dimension: consumer_id {
    type: string
    sql: ${TABLE}.consumer_id ;;
  }

  dimension: conv_id {
    type: string
    sql: ${TABLE}.conv_id ;;
  }

  dimension: conv_skill_id {
    type: number
    sql: ${TABLE}.conv_skill_id ;;
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

  dimension: initial_device_id {
    type: number
    sql: ${TABLE}.initial_device_id ;;
  }

  dimension: interactive_skill_ind {
    type: number
    sql: ${TABLE}.interactive_skill_ind ;;
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

  dimension: md5_key {
    type: string
    sql: ${TABLE}.md5_key ;;
  }

  dimension: non_responsive_agents_ind {
    type: number
    sql: ${TABLE}.non_responsive_agents_ind ;;
  }

  dimension: non_responsive_consumers_ind {
    type: number
    sql: ${TABLE}.non_responsive_consumers_ind ;;
  }

  dimension_group: segment_end {
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
    sql: ${TABLE}.segment_end_time ;;
  }

  dimension_group: segment_start {
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
    sql: ${TABLE}.segment_start_time ;;
  }

  dimension: skill_seg_end_reason {
    type: number
    sql: ${TABLE}.skill_seg_end_reason ;;
  }

  dimension: skill_seg_start_reason {
    type: number
    sql: ${TABLE}.skill_seg_start_reason ;;
  }

  dimension: skill_segment_duration {
    type: number
    sql: ${TABLE}.skill_segment_duration ;;
  }

  dimension: software_id {
    type: string
    sql: ${TABLE}.software_id ;;
  }

  dimension: source_files {
    type: string
    sql: ${TABLE}.source_files ;;
  }

  dimension: target_skill_id {
    type: number
    sql: ${TABLE}.target_skill_id ;;
  }

  dimension: user_type_id {
    type: number
    sql: ${TABLE}.user_type_id ;;
  }

  dimension: wait_time_for_agent_assignment {
    type: number
    sql: ${TABLE}.wait_time_for_agent_assignment ;;
  }

  dimension: wait_time_untill_abandon_skill_in_queue {
    type: number
    sql: ${TABLE}.wait_time_untill_abandon_skill_in_queue ;;
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
