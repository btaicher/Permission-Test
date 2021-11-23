view: dim_msg_survey_question {
  sql_table_name: `LP_RAW.DIM_MSG_SURVEY_QUESTION`
    ;;

  dimension: account_id {
    type: string
    sql: ${TABLE}.ACCOUNT_ID ;;
  }

  dimension_group: cdc_insert {
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
    sql: ${TABLE}.CDC_INSERT_TIME ;;
  }

  dimension_group: cdc_update {
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
    sql: ${TABLE}.CDC_UPDATE_TIME ;;
  }

  dimension_group: modify {
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
    sql: ${TABLE}.MODIFY_DATE ;;
  }

  dimension: question_format_id {
    type: number
    sql: ${TABLE}.QUESTION_FORMAT_ID ;;
  }

  dimension: question_group_id {
    type: string
    sql: ${TABLE}.QUESTION_GROUP_ID ;;
  }

  dimension: question_id {
    type: string
    sql: ${TABLE}.QUESTION_ID ;;
  }

  dimension: question_name {
    type: string
    sql: ${TABLE}.QUESTION_NAME ;;
  }

  dimension: question_pos {
    type: number
    sql: ${TABLE}.QUESTION_POS ;;
  }

  dimension: question_text {
    type: string
    sql: ${TABLE}.QUESTION_TEXT ;;
  }

  dimension: question_type_id {
    type: number
    sql: ${TABLE}.QUESTION_TYPE_ID ;;
  }

  dimension: revision_id {
    type: number
    sql: ${TABLE}.REVISION_ID ;;
  }

  dimension: survey_id {
    type: number
    sql: ${TABLE}.SURVEY_ID ;;
  }

  measure: count {
    type: count
    drill_fields: [question_name]
  }
}
