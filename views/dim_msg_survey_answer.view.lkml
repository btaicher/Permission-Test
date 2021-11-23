view: dim_msg_survey_answer {
  sql_table_name: `LP_RAW.DIM_MSG_SURVEY_ANSWER`
    ;;

  dimension: account_id {
    type: string
    sql: ${TABLE}.ACCOUNT_ID ;;
  }

  dimension: answer_id {
    type: string
    sql: ${TABLE}.ANSWER_ID ;;
  }

  dimension: answer_name {
    type: string
    sql: ${TABLE}.ANSWER_NAME ;;
  }

  dimension: answer_pos {
    type: number
    sql: ${TABLE}.ANSWER_POS ;;
  }

  dimension: answer_type_id {
    type: number
    sql: ${TABLE}.ANSWER_TYPE_ID ;;
  }

  dimension: answer_value {
    type: number
    sql: ${TABLE}.ANSWER_VALUE ;;
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

  dimension: question_id {
    type: string
    sql: ${TABLE}.QUESTION_ID ;;
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
    drill_fields: [answer_name]
  }
}
