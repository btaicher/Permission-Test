view: rpt_agg_msg_conv_skill_seg_vw {
  sql_table_name: `LP_RAW.RPT_AGG_MSG_CONV_SKILL_SEG_VW`
    ;;

  dimension: abandoned_skill_in_queue_ind {
    type: number
    sql: ${TABLE}.ABANDONED_SKILL_IN_QUEUE_IND ;;
  }

  dimension: abandoned_skill_ind {
    type: number
    sql: ${TABLE}.ABANDONED_SKILL_IND ;;
  }

  dimension: account_id {
    type: string
    sql: ${TABLE}.ACCOUNT_ID ;;
  }

  dimension: app_installation_id {
    type: string
    sql: ${TABLE}.APP_INSTALLATION_ID ;;
  }

  dimension: campaign_id {
    type: number
    sql: ${TABLE}.CAMPAIGN_ID ;;
  }

  dimension: consumer_id {
    type: string
    sql: ${TABLE}.CONSUMER_ID ;;
  }

  dimension: conv_id {
    type: string
    sql: ${TABLE}.CONV_ID ;;
  }

  dimension: conv_skill_id {
    type: number
    sql: ${TABLE}.CONV_SKILL_ID ;;
  }

  dimension: engagement_id {
    type: number
    sql: ${TABLE}.ENGAGEMENT_ID ;;
  }

  dimension: initial_device_id {
    type: number
    sql: ${TABLE}.INITIAL_DEVICE_ID ;;
  }

  dimension: interactive_skill_ind {
    type: number
    sql: ${TABLE}.INTERACTIVE_SKILL_IND ;;
  }

  dimension: non_responsive_agents_ind {
    type: number
    sql: ${TABLE}.NON_RESPONSIVE_AGENTS_IND ;;
  }

  dimension: non_responsive_consumers_ind {
    type: number
    sql: ${TABLE}.NON_RESPONSIVE_CONSUMERS_IND ;;
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
    sql: ${TABLE}.SEGMENT_END_TIME ;;
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
    sql: ${TABLE}.SEGMENT_START_TIME ;;
  }

  dimension: skill_seg_end_reason {
    type: number
    sql: ${TABLE}.SKILL_SEG_END_REASON ;;
  }

  dimension: skill_seg_start_reason {
    type: number
    sql: ${TABLE}.SKILL_SEG_START_REASON ;;
  }

  dimension: skill_segment_duration {
    type: number
    sql: ${TABLE}.SKILL_SEGMENT_DURATION ;;
  }

  dimension: skill_segments {
    type: string
    sql: ${TABLE}.SKILL_SEGMENTS ;;
  }

  dimension: software_id {
    type: string
    sql: ${TABLE}.SOFTWARE_ID ;;
  }

  dimension: target_skill_id {
    type: number
    sql: ${TABLE}.TARGET_SKILL_ID ;;
  }

  dimension: user_type_id {
    type: number
    sql: ${TABLE}.USER_TYPE_ID ;;
  }

  dimension: wait_time_for_agent_assignment {
    type: number
    sql: ${TABLE}.WAIT_TIME_FOR_AGENT_ASSIGNMENT ;;
  }

  dimension: wait_time_untill_abandon_skill_in_queue {
    type: number
    sql: ${TABLE}.WAIT_TIME_UNTILL_ABANDON_SKILL_IN_QUEUE ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
