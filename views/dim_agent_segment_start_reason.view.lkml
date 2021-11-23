view: dim_agent_segment_start_reason {
  sql_table_name: `LP_RAW.DIM_AGENT_SEGMENT_START_REASON`
    ;;

  dimension: reason_name {
    type: string
    sql: ${TABLE}.REASON_NAME ;;
  }

  dimension: start_reason_id {
    type: number
    sql: ${TABLE}.START_REASON_ID ;;
  }

  measure: count {
    type: count
    drill_fields: [reason_name]
  }
}
