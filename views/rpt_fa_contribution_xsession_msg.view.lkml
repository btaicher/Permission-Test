view: rpt_fa_contribution_xsession_msg {
  sql_table_name: `LP_RAW.RPT_FA_CONTRIBUTION_XSESSION_MSG`
    ;;

  dimension: account_id {
    type: string
    sql: ${TABLE}.account_id ;;
  }

  dimension: action_campaign_id {
    type: number
    sql: ${TABLE}.action_campaign_id ;;
  }

  dimension: action_channel_id {
    type: number
    sql: ${TABLE}.action_channel_id ;;
  }

  dimension: action_consumer_id {
    type: string
    sql: ${TABLE}.action_consumer_id ;;
  }

  dimension: action_engagement_id {
    type: number
    sql: ${TABLE}.action_engagement_id ;;
  }

  dimension: action_goal_id {
    type: number
    sql: ${TABLE}.action_goal_id ;;
  }

  dimension: action_goal_type_id {
    type: number
    sql: ${TABLE}.action_goal_type_id ;;
  }

  dimension: action_lob_id {
    type: number
    sql: ${TABLE}.action_lob_id ;;
  }

  dimension_group: action {
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
    sql: ${TABLE}.action_time ;;
  }

  dimension_group: action_time_15m {
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
    sql: ${TABLE}.action_time_15m ;;
  }

  dimension: action_type_id {
    type: number
    sql: ${TABLE}.action_type_id ;;
  }

  dimension: action_visit_id {
    type: string
    sql: ${TABLE}.action_visit_id ;;
  }

  dimension_group: action_visit_start {
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
    sql: ${TABLE}.action_visit_start_time ;;
  }

  dimension_group: action_visit_start_time_15m {
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
    sql: ${TABLE}.action_visit_start_time_15m ;;
  }

  dimension: agent_group_id {
    type: number
    sql: ${TABLE}.agent_group_id ;;
  }

  dimension: agent_id {
    type: string
    sql: ${TABLE}.agent_id ;;
  }

  dimension: agent_messages {
    type: number
    sql: ${TABLE}.agent_messages ;;
  }

  dimension: agent_responses {
    type: number
    sql: ${TABLE}.agent_responses ;;
  }

  dimension: agent_seg_end_reason {
    type: number
    sql: ${TABLE}.agent_seg_end_reason ;;
  }

  dimension: agent_seg_start_reason {
    type: number
    sql: ${TABLE}.agent_seg_start_reason ;;
  }

  dimension: attribution_type_id {
    type: number
    sql: ${TABLE}.attribution_type_id ;;
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

  dimension: business_goal_ind {
    type: number
    sql: ${TABLE}.business_goal_ind ;;
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

  dimension: currency_code {
    type: string
    sql: ${TABLE}.currency_code ;;
  }

  dimension: event_id {
    type: string
    sql: ${TABLE}.event_id ;;
  }

  dimension_group: event {
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
    sql: ${TABLE}.event_time ;;
  }

  dimension_group: event_time_15m {
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
    sql: ${TABLE}.event_time_15m ;;
  }

  dimension: fact_cross_window {
    type: number
    sql: ${TABLE}.fact_cross_window ;;
  }

  dimension: farm_id {
    type: number
    sql: ${TABLE}.farm_id ;;
  }

  dimension: goal_id {
    type: number
    sql: ${TABLE}.goal_id ;;
  }

  dimension: goal_match_ind {
    type: number
    sql: ${TABLE}.goal_match_ind ;;
  }

  dimension: goal_type_id {
    type: number
    sql: ${TABLE}.goal_type_id ;;
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

  dimension: in_session_ind {
    type: number
    sql: ${TABLE}.in_session_ind ;;
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

  dimension: lead_value {
    type: number
    sql: ${TABLE}.lead_value ;;
  }

  dimension: lpconsumer_id {
    type: string
    sql: ${TABLE}.lpconsumer_id ;;
  }

  dimension: md5_key {
    type: string
    sql: ${TABLE}.md5_key ;;
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

  dimension_group: segment_start_time_15m {
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
    sql: ${TABLE}.segment_start_time_15m ;;
  }

  dimension: service_activity_category {
    type: string
    sql: ${TABLE}.service_activity_category ;;
  }

  dimension: service_activity_status {
    type: number
    sql: ${TABLE}.service_activity_status ;;
  }

  dimension: software_id {
    type: string
    sql: ${TABLE}.software_id ;;
  }

  dimension: source_files {
    type: string
    sql: ${TABLE}.source_files ;;
  }

  dimension: success_event_id {
    type: string
    sql: ${TABLE}.success_event_id ;;
  }

  dimension: success_event_type_id {
    type: number
    sql: ${TABLE}.success_event_type_id ;;
  }

  dimension: success_id {
    type: string
    sql: ${TABLE}.success_id ;;
  }

  dimension: time_assigned {
    type: number
    sql: ${TABLE}.time_assigned ;;
  }

  dimension: topic {
    type: string
    sql: ${TABLE}.topic ;;
  }

  dimension: transaction_total {
    type: number
    sql: ${TABLE}.transaction_total ;;
  }

  dimension: user_type_id {
    type: number
    sql: ${TABLE}.user_type_id ;;
  }

  dimension: visit_id {
    type: string
    sql: ${TABLE}.visit_id ;;
  }

  dimension_group: visit_start {
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
    sql: ${TABLE}.visit_start_time ;;
  }

  dimension_group: visit_start_time_15m {
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
    sql: ${TABLE}.visit_start_time_15m ;;
  }

  dimension: visitor_id {
    type: string
    sql: ${TABLE}.visitor_id ;;
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
