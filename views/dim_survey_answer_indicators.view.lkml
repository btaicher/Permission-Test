view: dim_survey_answer_indicators {
  sql_table_name: `LP_RAW.DIM_SURVEY_ANSWER_INDICATORS`
    ;;

  dimension: valid_answer_ind {
    type: string
    sql: ${TABLE}.VALID_ANSWER_IND ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
