view: dim_agent_status {
  sql_table_name: `LP_RAW.DIM_AGENT_STATUS`
    ;;

  dimension: state_id {
    type: number
    sql: ${TABLE}.STATE_ID ;;
  }

  dimension: state_name {
    type: string
    sql: ${TABLE}.STATE_NAME ;;
  }

  measure: count {
    type: count
    drill_fields: [state_name]
  }
}
