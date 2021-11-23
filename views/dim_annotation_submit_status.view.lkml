view: dim_annotation_submit_status {
  sql_table_name: `LP_RAW.DIM_ANNOTATION_SUBMIT_STATUS`
    ;;

  dimension: submit_status_name {
    type: string
    sql: ${TABLE}.SUBMIT_STATUS_NAME ;;
  }

  dimension: submitted_status_id {
    type: number
    sql: ${TABLE}.SUBMITTED_STATUS_ID ;;
  }

  measure: count {
    type: count
    drill_fields: [submit_status_name]
  }
}
