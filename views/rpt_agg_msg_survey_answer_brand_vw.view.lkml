view: rpt_agg_msg_survey_answer_brand_vw {
  sql_table_name: `LP_RAW.RPT_AGG_MSG_SURVEY_ANSWER_BRAND_VW`
    ;;

  dimension: account_id {
    type: string
    sql: ${TABLE}.ACCOUNT_ID ;;
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
    sql: ${TABLE}.AGG_DATE ;;
  }

  dimension: answer_count {
    type: number
    sql: ${TABLE}.ANSWER_COUNT ;;
  }

  dimension: answer_dur_days {
    type: number
    sql: ${TABLE}.ANSWER_DUR_DAYS ;;
  }

  dimension: answer_id {
    type: string
    sql: ${TABLE}.ANSWER_ID ;;
  }

  dimension: answer_value {
    type: number
    sql: ${TABLE}.ANSWER_VALUE ;;
  }

  dimension: app_installation_id {
    type: string
    sql: ${TABLE}.APP_INSTALLATION_ID ;;
  }

  dimension: campaign_id {
    type: number
    sql: ${TABLE}.CAMPAIGN_ID ;;
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

  dimension: lob_id {
    type: number
    sql: ${TABLE}.LOB_ID ;;
  }

  dimension: question_answer {
    type: string
    sql: ${TABLE}.QUESTION_ANSWER ;;
  }

  dimension: question_id {
    type: string
    sql: ${TABLE}.QUESTION_ID ;;
  }

  dimension: question_type_id {
    type: number
    sql: ${TABLE}.QUESTION_TYPE_ID ;;
  }

  dimension: skill_id {
    type: number
    sql: ${TABLE}.SKILL_ID ;;
  }

  dimension: software_id {
    type: string
    sql: ${TABLE}.SOFTWARE_ID ;;
  }

  dimension: survey_id {
    type: string
    sql: ${TABLE}.SURVEY_ID ;;
  }

  dimension: survey_type_id {
    type: number
    sql: ${TABLE}.SURVEY_TYPE_ID ;;
  }

  dimension: valid_answer_ind {
    type: string
    sql: ${TABLE}.VALID_ANSWER_IND ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
