view: dim_rb_success_type {
  sql_table_name: `LP_RAW.DIM_RB_SUCCESS_TYPE`
    ;;

  dimension: success_type {
    type: string
    sql: ${TABLE}.SUCCESS_TYPE ;;
  }

  dimension: success_type_id {
    type: number
    sql: ${TABLE}.SUCCESS_TYPE_ID ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
