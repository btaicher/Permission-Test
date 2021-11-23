view: dim_msg_survey_answer_type {
  sql_table_name: `LP_RAW.DIM_MSG_SURVEY_ANSWER_TYPE`
    ;;

  dimension: answer_type_id {
    type: number
    sql: ${TABLE}.ANSWER_TYPE_ID ;;
  }

  dimension: answer_type_name {
    type: string
    sql: ${TABLE}.ANSWER_TYPE_name ;;
  }

  dimension: rpt_answer_type {
    type: string
    sql: ${TABLE}.RPT_ANSWER_TYPE ;;
  }

  measure: count {
    type: count
    drill_fields: [answer_type_name]
  }
}
