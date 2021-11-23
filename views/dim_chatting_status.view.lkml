view: dim_chatting_status {
  sql_table_name: `LP_RAW.DIM_CHATTING_STATUS`
    ;;

  dimension: chatting_state_id {
    type: number
    sql: ${TABLE}.CHATTING_STATE_ID ;;
  }

  dimension: chatting_state_name {
    type: string
    sql: ${TABLE}.CHATTING_STATE_NAME ;;
  }

  measure: count {
    type: count
    drill_fields: [chatting_state_name]
  }
}
