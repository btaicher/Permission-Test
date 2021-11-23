view: rpt_agg_msg_conv_agent_seg_vw {
  sql_table_name: `LP_RAW.RPT_AGG_MSG_CONV_AGENT_SEG_VW`
    ;;

  dimension: abandoned_agent_ind {
    type: number
    sql: ${TABLE}.ABANDONED_AGENT_IND ;;
  }

  dimension: account_id {
    type: string
    sql: ${TABLE}.ACCOUNT_ID ;;
  }

  dimension: agent_group_id {
    type: number
    sql: ${TABLE}.AGENT_GROUP_ID ;;
  }

  dimension: agent_id {
    type: string
    sql: ${TABLE}.AGENT_ID ;;
  }

  dimension: agent_response_from_assignment_in_segment {
    type: number
    sql: ${TABLE}.AGENT_RESPONSE_FROM_ASSIGNMENT_IN_SEGMENT ;;
  }

  dimension: agent_seg_end_reason {
    type: number
    sql: ${TABLE}.AGENT_SEG_END_REASON ;;
  }

  dimension: agent_seg_start_reason {
    type: number
    sql: ${TABLE}.AGENT_SEG_START_REASON ;;
  }

  dimension: agent_segments {
    type: number
    sql: ${TABLE}.AGENT_SEGMENTS ;;
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

  dimension: first_response_from_agent_assignment_in_segment {
    type: number
    sql: ${TABLE}.FIRST_RESPONSE_FROM_AGENT_ASSIGNMENT_IN_SEGMENT ;;
  }

  dimension: initial_device_id {
    type: number
    sql: ${TABLE}.INITIAL_DEVICE_ID ;;
  }

  dimension: interactive_agent_ind {
    type: number
    sql: ${TABLE}.INTERACTIVE_AGENT_IND ;;
  }

  dimension: non_responsive_agents_ind {
    type: number
    sql: ${TABLE}.NON_RESPONSIVE_AGENTS_IND ;;
  }

  dimension: non_responsive_consumers_ind {
    type: number
    sql: ${TABLE}.NON_RESPONSIVE_CONSUMERS_IND ;;
  }

  dimension: num_of_agent_responses {
    type: number
    sql: ${TABLE}.NUM_OF_AGENT_RESPONSES ;;
  }

  dimension: num_of_consumer_responses {
    type: number
    sql: ${TABLE}.NUM_OF_CONSUMER_RESPONSES ;;
  }

  dimension: num_of_first_response_from_agent_assignment_in_segment {
    type: number
    sql: ${TABLE}.NUM_OF_FIRST_RESPONSE_FROM_AGENT_ASSIGNMENT_IN_SEGMENT ;;
  }

  dimension: segment_duration {
    type: number
    sql: ${TABLE}.SEGMENT_DURATION ;;
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

  dimension: software_id {
    type: string
    sql: ${TABLE}.SOFTWARE_ID ;;
  }

  dimension: user_type_id {
    type: number
    sql: ${TABLE}.USER_TYPE_ID ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
