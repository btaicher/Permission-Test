view: dim_agent_segment_end_reason {
  sql_table_name: `LP_RAW.DIM_AGENT_SEGMENT_END_REASON`
    ;;

  dimension: end_reason_id {
    type: number
    sql: ${TABLE}.END_REASON_ID ;;
  }

  dimension: reason_name {
    type: string
    sql: ${TABLE}.REASON_NAME ;;
  }

  measure: count {
    type: count
    drill_fields: [reason_name]
  }
}
