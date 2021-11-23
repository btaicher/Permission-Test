view: dim_rb_session_type {
  sql_table_name: `LP_RAW.DIM_RB_SESSION_TYPE`
    ;;

  dimension: session_type {
    type: string
    sql: ${TABLE}.SESSION_TYPE ;;
  }

  dimension: session_type_id {
    type: number
    sql: ${TABLE}.SESSION_TYPE_ID ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
