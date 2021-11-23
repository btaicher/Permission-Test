view: dim_survey_question {
  sql_table_name: `LP_RAW.DIM_SURVEY_QUESTION`
    ;;

  dimension: account_id {
    type: string
    sql: ${TABLE}.ACCOUNT_ID ;;
  }

  dimension: active_survey_ind {
    type: number
    sql: ${TABLE}.ACTIVE_SURVEY_IND ;;
  }

  dimension: answer_type_id {
    type: number
    sql: ${TABLE}.ANSWER_TYPE_ID ;;
  }

  dimension: answer_type_name {
    type: string
    sql: ${TABLE}.ANSWER_TYPE_NAME ;;
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

  dimension: logic_id {
    type: number
    sql: ${TABLE}.LOGIC_ID ;;
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

  dimension: oltp_question_id {
    type: number
    sql: ${TABLE}.OLTP_QUESTION_ID ;;
  }

  dimension: question_displayed_ind {
    type: number
    sql: ${TABLE}.QUESTION_DISPLAYED_IND ;;
  }

  dimension: question_id {
    type: number
    sql: ${TABLE}.QUESTION_ID ;;
  }

  dimension: question_position {
    type: number
    sql: ${TABLE}.QUESTION_POSITION ;;
  }

  dimension: question_text {
    type: string
    sql: ${TABLE}.QUESTION_TEXT ;;
  }

  dimension: question_type_id {
    type: number
    sql: ${TABLE}.QUESTION_TYPE_ID ;;
  }

  dimension: question_type_name {
    type: string
    sql: ${TABLE}.QUESTION_TYPE_NAME ;;
  }

  dimension: required_ind {
    type: number
    sql: ${TABLE}.REQUIRED_IND ;;
  }

  dimension: structured_answer_ind {
    type: number
    sql: ${TABLE}.STRUCTURED_ANSWER_IND ;;
  }

  dimension: survey_id {
    type: number
    sql: ${TABLE}.SURVEY_ID ;;
  }

  dimension: survey_type_id {
    type: number
    sql: ${TABLE}.SURVEY_TYPE_ID ;;
  }

  dimension: ude_id {
    type: number
    sql: ${TABLE}.UDE_ID ;;
  }

  measure: count {
    type: count
    drill_fields: [question_type_name, answer_type_name]
  }
}
