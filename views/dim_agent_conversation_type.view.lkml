view: dim_agent_conversation_type {
  sql_table_name: `LP_RAW.DIM_AGENT_CONVERSATION_TYPE`
    ;;

  dimension: agent_conv_type {
    type: number
    sql: ${TABLE}.AGENT_CONV_TYPE ;;
  }

  dimension: agent_conv_type_desc {
    type: string
    sql: ${TABLE}.AGENT_CONV_TYPE_DESC ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
