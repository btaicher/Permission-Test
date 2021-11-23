view: dim_msg_survey_submit_status {
  sql_table_name: `LP_RAW.DIM_MSG_SURVEY_SUBMIT_STATUS`
    ;;

  dimension: name {
    type: string
    sql: ${TABLE}.NAME ;;
  }

  dimension: submit_status_id {
    type: number
    sql: ${TABLE}.submit_status_id ;;
  }

  measure: count {
    type: count
    drill_fields: [name]
  }
}
