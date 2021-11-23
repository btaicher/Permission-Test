view: dim_session_type {
  sql_table_name: `LP_RAW.DIM_SESSION_TYPE`
    ;;

  dimension: session_type_desc {
    type: string
    sql: ${TABLE}.SESSION_TYPE_DESC ;;
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
