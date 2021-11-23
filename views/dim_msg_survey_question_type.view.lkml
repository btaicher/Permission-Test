view: dim_msg_survey_question_type {
  sql_table_name: `LP_RAW.DIM_MSG_SURVEY_QUESTION_TYPE`
    ;;

  dimension: question_type_id {
    type: number
    sql: ${TABLE}.QUESTION_TYPE_ID ;;
  }

  dimension: question_type_name {
    type: string
    sql: ${TABLE}.QUESTION_TYPE_NAME ;;
  }

  dimension: rpt_question_type {
    type: string
    sql: ${TABLE}.RPT_QUESTION_TYPE ;;
  }

  measure: count {
    type: count
    drill_fields: [question_type_name]
  }
}
