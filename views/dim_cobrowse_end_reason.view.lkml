view: dim_cobrowse_end_reason {
  sql_table_name: `LP_RAW.DIM_COBROWSE_END_REASON`
    ;;

  dimension: end_reason {
    type: string
    sql: ${TABLE}.END_REASON ;;
  }

  dimension: end_reason_id {
    type: number
    sql: ${TABLE}.END_REASON_ID ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
