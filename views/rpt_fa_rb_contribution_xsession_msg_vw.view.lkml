view: rpt_fa_rb_contribution_xsession_msg_vw {
  sql_table_name: `LP_RAW.RPT_FA_RB_CONTRIBUTION_XSESSION_MSG_VW`
    ;;

  dimension: account_id {
    type: string
    sql: ${TABLE}.ACCOUNT_ID ;;
  }

  dimension: action_channel_id {
    type: number
    sql: ${TABLE}.ACTION_CHANNEL_ID ;;
  }

  dimension: action_lob_id {
    type: number
    sql: ${TABLE}.ACTION_LOB_ID ;;
  }

  dimension_group: action_time_15_m {
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
    sql: ${TABLE}.ACTION_TIME_15M ;;
  }

  dimension: action_type_id {
    type: number
    sql: ${TABLE}.ACTION_TYPE_ID ;;
  }

  dimension: agent_group_id {
    type: number
    sql: ${TABLE}.AGENT_GROUP_ID ;;
  }

  dimension: agent_id {
    type: string
    sql: ${TABLE}.AGENT_ID ;;
  }

  dimension: agent_seg_end_reason {
    type: number
    sql: ${TABLE}.AGENT_SEG_END_REASON ;;
  }

  dimension: agent_seg_start_reason {
    type: number
    sql: ${TABLE}.AGENT_SEG_START_REASON ;;
  }

  dimension: attribution_type_id {
    type: string
    sql: ${TABLE}.ATTRIBUTION_TYPE_ID ;;
  }

  dimension: business_goal_ind {
    type: number
    sql: ${TABLE}.BUSINESS_GOAL_IND ;;
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

  dimension: cross_session_goal_achieved_post_eng {
    type: number
    sql: ${TABLE}.CROSS_SESSION_GOAL_ACHIEVED_POST_ENG ;;
  }

  dimension: cross_window {
    type: number
    sql: ${TABLE}.CROSS_WINDOW ;;
  }

  dimension: currency_code {
    type: string
    sql: ${TABLE}.CURRENCY_CODE ;;
  }

  dimension: engagement_id {
    type: number
    sql: ${TABLE}.ENGAGEMENT_ID ;;
  }

  dimension: fact_cross_window {
    type: number
    sql: ${TABLE}.FACT_CROSS_WINDOW ;;
  }

  dimension: goal_id {
    type: number
    sql: ${TABLE}.GOAL_ID ;;
  }

  dimension: goal_type_id {
    type: number
    sql: ${TABLE}.GOAL_TYPE_ID ;;
  }

  dimension: in_session_goal_achieved_post_eng {
    type: number
    sql: ${TABLE}.IN_SESSION_GOAL_ACHIEVED_POST_ENG ;;
  }

  dimension: in_session_ind {
    type: number
    sql: ${TABLE}.IN_SESSION_IND ;;
  }

  dimension: in_session_revenue_post_eng {
    type: number
    sql: ${TABLE}.IN_SESSION_REVENUE_POST_ENG ;;
  }

  dimension: post_engagement_ind {
    type: number
    sql: ${TABLE}.POST_ENGAGEMENT_IND ;;
  }

  dimension: purchase_goal_revenue {
    type: number
    sql: ${TABLE}.PURCHASE_GOAL_REVENUE ;;
  }

  dimension: skill_id {
    type: number
    sql: ${TABLE}.SKILL_ID ;;
  }

  dimension: software_id {
    type: string
    sql: ${TABLE}.SOFTWARE_ID ;;
  }

  dimension: success_event_type_id {
    type: number
    sql: ${TABLE}.SUCCESS_EVENT_TYPE_ID ;;
  }

  dimension: user_type_id {
    type: number
    sql: ${TABLE}.USER_TYPE_ID ;;
  }

  dimension: value {
    type: number
    sql: ${TABLE}.VALUE ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
