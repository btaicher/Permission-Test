view: dim_secured_form_status {
  sql_table_name: `LP_RAW.DIM_SECURED_FORM_STATUS`
    ;;

  dimension: form_status_id {
    type: number
    sql: ${TABLE}.FORM_STATUS_ID ;;
  }

  dimension: status_name {
    type: string
    sql: ${TABLE}.STATUS_NAME ;;
  }

  measure: count {
    type: count
    drill_fields: [status_name]
  }
}
