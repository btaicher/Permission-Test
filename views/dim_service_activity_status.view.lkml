view: dim_service_activity_status {
  sql_table_name: `LP_RAW.DIM_SERVICE_ACTIVITY_STATUS`
    ;;

  dimension: service_status {
    type: string
    sql: ${TABLE}.SERVICE_STATUS ;;
  }

  dimension: service_status_id {
    type: number
    sql: ${TABLE}.SERVICE_STATUS_ID ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
