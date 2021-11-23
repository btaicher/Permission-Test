view: dim_survey_type {
  sql_table_name: `LP_RAW.DIM_SURVEY_TYPE`
    ;;

  dimension: survey_type_id {
    type: number
    sql: ${TABLE}.SURVEY_TYPE_ID ;;
  }

  dimension: survey_type_name {
    type: string
    sql: ${TABLE}.SURVEY_TYPE_NAME ;;
  }

  measure: count {
    type: count
    drill_fields: [survey_type_name]
  }
}
