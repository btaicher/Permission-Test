view: dim_msg_survey_question_format {
  sql_table_name: `LP_RAW.DIM_MSG_SURVEY_QUESTION_FORMAT`
    ;;

  dimension: question_format_id {
    type: number
    sql: ${TABLE}.QUESTION_FORMAT_ID ;;
  }

  dimension: question_format_name {
    type: string
    sql: ${TABLE}.QUESTION_FORMAT_NAME ;;
  }

  dimension: rpt_question_format {
    type: string
    sql: ${TABLE}.RPT_QUESTION_FORMAT ;;
  }

  measure: count {
    type: count
    drill_fields: [question_format_name]
  }
}
