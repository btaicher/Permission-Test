view: dim_rb_interactive {
  sql_table_name: `LP_RAW.DIM_RB_INTERACTIVE`
    ;;

  dimension: is_interactive {
    type: string
    sql: ${TABLE}.IS_INTERACTIVE ;;
  }

  dimension: is_interactive_id {
    type: number
    sql: ${TABLE}.IS_INTERACTIVE_ID ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
