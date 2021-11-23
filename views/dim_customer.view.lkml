view: dim_customer {
  sql_table_name: `LP_RAW.DIM_CUSTOMER`
    ;;

  dimension: customer_id {
    type: string
    sql: ${TABLE}.CUSTOMER_ID ;;
  }

  dimension: customer_status_id {
    type: number
    sql: ${TABLE}.CUSTOMER_STATUS_ID ;;
  }

  dimension: customer_type_id {
    type: number
    sql: ${TABLE}.CUSTOMER_TYPE_ID ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
