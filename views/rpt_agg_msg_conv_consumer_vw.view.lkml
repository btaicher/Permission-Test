view: rpt_agg_msg_conv_consumer_vw {
  sql_table_name: `LP_RAW.RPT_AGG_MSG_CONV_CONSUMER_VW`
    ;;

  dimension: account_id {
    type: string
    sql: ${TABLE}.ACCOUNT_ID ;;
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

  dimension: campaign_id {
    type: number
    sql: ${TABLE}.CAMPAIGN_ID ;;
  }

  dimension: closed_by_consumer {
    type: number
    sql: ${TABLE}.CLOSED_BY_CONSUMER ;;
  }

  dimension: consumer_browser {
    type: number
    sql: ${TABLE}.CONSUMER_BROWSER ;;
  }

  dimension: consumer_id {
    type: string
    sql: ${TABLE}.CONSUMER_ID ;;
  }

  dimension: consumer_messages {
    type: number
    sql: ${TABLE}.CONSUMER_MESSAGES ;;
  }

  dimension: consumer_messages_2_agent {
    type: number
    sql: ${TABLE}.CONSUMER_MESSAGES_2AGENT ;;
  }

  dimension: consumer_os {
    type: number
    sql: ${TABLE}.CONSUMER_OS ;;
  }

  dimension: consumer_response_time_days {
    type: number
    sql: ${TABLE}.CONSUMER_RESPONSE_TIME_DAYS ;;
  }

  dimension: consumer_responses {
    type: number
    sql: ${TABLE}.CONSUMER_RESPONSES ;;
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

  dimension: first_conv_ind {
    type: string
    sql: ${TABLE}.FIRST_CONV_IND ;;
  }

  dimension: initial_device_id {
    type: number
    sql: ${TABLE}.INITIAL_DEVICE_ID ;;
  }

  dimension: mcs {
    type: number
    sql: ${TABLE}.MCS ;;
  }

  dimension: opened_by_consumer {
    type: number
    sql: ${TABLE}.OPENED_BY_CONSUMER ;;
  }

  dimension: software_id {
    type: string
    sql: ${TABLE}.SOFTWARE_ID ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
