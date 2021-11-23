view: rpt_agg_msg_conv_agent_vw {
  sql_table_name: `LP_RAW.RPT_AGG_MSG_CONV_AGENT_VW`
    ;;

  dimension: abandoned {
    type: number
    sql: ${TABLE}.ABANDONED ;;
  }

  dimension: account_id {
    type: string
    sql: ${TABLE}.ACCOUNT_ID ;;
  }

  dimension: agent_accepts {
    type: number
    sql: ${TABLE}.AGENT_ACCEPTS ;;
  }

  dimension: agent_first_response_dur_days {
    type: number
    sql: ${TABLE}.AGENT_FIRST_RESPONSE_DUR_DAYS ;;
  }

  dimension: agent_first_response_dur_days_first_conv {
    type: number
    sql: ${TABLE}.AGENT_FIRST_RESPONSE_DUR_DAYS_FIRST_CONV ;;
  }

  dimension: agent_group_id {
    type: number
    sql: ${TABLE}.AGENT_GROUP_ID ;;
  }

  dimension: agent_id {
    type: string
    sql: ${TABLE}.AGENT_ID ;;
  }

  dimension: agent_messages {
    type: number
    sql: ${TABLE}.AGENT_MESSAGES ;;
  }

  dimension: agent_response_from_assignment {
    type: number
    sql: ${TABLE}.AGENT_RESPONSE_FROM_ASSIGNMENT ;;
  }

  dimension: agent_response_time_days {
    type: number
    sql: ${TABLE}.AGENT_RESPONSE_TIME_DAYS ;;
  }

  dimension: agent_responses {
    type: number
    sql: ${TABLE}.AGENT_RESPONSES ;;
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
    sql: ${TABLE}.ANALYSIS_DATE ;;
  }

  dimension: assignments {
    type: number
    sql: ${TABLE}.ASSIGNMENTS ;;
  }

  dimension: campaign_id {
    type: number
    sql: ${TABLE}.CAMPAIGN_ID ;;
  }

  dimension: closed_by_agent {
    type: number
    sql: ${TABLE}.CLOSED_BY_AGENT ;;
  }

  dimension: closed_by_consumer {
    type: number
    sql: ${TABLE}.CLOSED_BY_CONSUMER ;;
  }

  dimension: closed_by_system {
    type: number
    sql: ${TABLE}.CLOSED_BY_SYSTEM ;;
  }

  dimension: consumer_id {
    type: string
    sql: ${TABLE}.CONSUMER_ID ;;
  }

  dimension: consumer_wait_time_to_first_human_agent_response_after_transfer {
    type: number
    sql: ${TABLE}.CONSUMER_WAIT_TIME_TO_FIRST_HUMAN_AGENT_RESPONSE_AFTER_TRANSFER ;;
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
    sql: ${TABLE}.CONV_END_TIME ;;
  }

  dimension: conv_id {
    type: string
    sql: ${TABLE}.CONV_ID ;;
  }

  dimension: conv_skill_id {
    type: number
    sql: ${TABLE}.CONV_SKILL_ID ;;
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
    sql: ${TABLE}.CONV_START_TIME ;;
  }

  dimension: csat {
    type: number
    sql: ${TABLE}.CSAT ;;
  }

  dimension: engagement_id {
    type: number
    sql: ${TABLE}.ENGAGEMENT_ID ;;
  }

  dimension: first_conv_ind {
    type: string
    sql: ${TABLE}.FIRST_CONV_IND ;;
  }

  dimension: first_human_message_after_bot_dur_days {
    type: number
    sql: ${TABLE}.FIRST_HUMAN_MESSAGE_AFTER_BOT_DUR_DAYS ;;
  }

  dimension: first_human_message_dur_days {
    type: number
    sql: ${TABLE}.FIRST_HUMAN_MESSAGE_DUR_DAYS ;;
  }

  dimension: first_response_agent_assignment_after_transfer {
    type: number
    sql: ${TABLE}.FIRST_RESPONSE_AGENT_ASSIGNMENT_AFTER_TRANSFER ;;
  }

  dimension: first_response_from_agent_assignment {
    type: number
    sql: ${TABLE}.FIRST_RESPONSE_FROM_AGENT_ASSIGNMENT ;;
  }

  dimension: first_response_from_agent_assignment_new_conversation {
    type: number
    sql: ${TABLE}.FIRST_RESPONSE_FROM_AGENT_ASSIGNMENT_NEW_CONVERSATION ;;
  }

  dimension: initial_device_id {
    type: number
    sql: ${TABLE}.INITIAL_DEVICE_ID ;;
  }

  dimension: interactive {
    type: number
    sql: ${TABLE}.INTERACTIVE ;;
  }

  dimension: lob_id {
    type: number
    sql: ${TABLE}.LOB_ID ;;
  }

  dimension: mcs {
    type: number
    sql: ${TABLE}.MCS ;;
  }

  dimension: no_of_agent_first_responses {
    type: number
    sql: ${TABLE}.NO_OF_AGENT_FIRST_RESPONSES ;;
  }

  dimension: no_of_agent_first_responses_first_conv {
    type: number
    sql: ${TABLE}.NO_OF_AGENT_FIRST_RESPONSES_FIRST_CONV ;;
  }

  dimension: no_of_assigned_agent_responses {
    type: number
    sql: ${TABLE}.NO_OF_ASSIGNED_AGENT_RESPONSES ;;
  }

  dimension: no_of_consumer_wait_time_to_first_human_agent_response_after_transfer {
    type: number
    sql: ${TABLE}.NO_OF_CONSUMER_WAIT_TIME_TO_FIRST_HUMAN_AGENT_RESPONSE_AFTER_TRANSFER ;;
  }

  dimension: no_of_first_human_message_after_bot_dur_days {
    type: number
    sql: ${TABLE}.NO_OF_FIRST_HUMAN_MESSAGE_AFTER_BOT_DUR_DAYS ;;
  }

  dimension: no_of_first_human_message_dur_days {
    type: number
    sql: ${TABLE}.NO_OF_FIRST_HUMAN_MESSAGE_DUR_DAYS ;;
  }

  dimension: no_of_first_response_from_agent_assignment {
    type: number
    sql: ${TABLE}.NO_OF_FIRST_RESPONSE_FROM_AGENT_ASSIGNMENT ;;
  }

  dimension: no_of_first_response_from_agent_assignment_after_transfer {
    type: number
    sql: ${TABLE}.NO_OF_FIRST_RESPONSE_FROM_AGENT_ASSIGNMENT_AFTER_TRANSFER ;;
  }

  dimension: no_of_first_response_from_agent_assignment_new_conversation {
    type: number
    sql: ${TABLE}.NO_OF_FIRST_RESPONSE_FROM_AGENT_ASSIGNMENT_NEW_CONVERSATION ;;
  }

  dimension: permission_id {
    type: number
    sql: ${TABLE}.PERMISSION_ID ;;
  }

  dimension: resolution_rate {
    type: number
    sql: ${TABLE}.RESOLUTION_RATE ;;
  }

  dimension: resolve_duration_ms {
    type: number
    sql: ${TABLE}.RESOLVE_DURATION_ms ;;
  }

  dimension: resumed_by_agent {
    type: number
    sql: ${TABLE}.RESUMED_BY_AGENT ;;
  }

  dimension: software_id {
    type: string
    sql: ${TABLE}.SOFTWARE_ID ;;
  }

  dimension: takeovers_by_agent {
    type: number
    sql: ${TABLE}.TAKEOVERS_BY_AGENT ;;
  }

  dimension: takeovers_from_agent {
    type: number
    sql: ${TABLE}.TAKEOVERS_FROM_AGENT ;;
  }

  dimension: transfers {
    type: number
    sql: ${TABLE}.TRANSFERS ;;
  }

  dimension: transfers_2_agent {
    type: number
    sql: ${TABLE}.TRANSFERS_2AGENT ;;
  }

  dimension: transfers_2_skill {
    type: number
    sql: ${TABLE}.TRANSFERS_2SKILL ;;
  }

  dimension: transfers_back2_queue {
    type: number
    sql: ${TABLE}.TRANSFERS_BACK2QUEUE ;;
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
