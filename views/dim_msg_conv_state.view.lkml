view: dim_msg_conv_state {
  sql_table_name: `LP_RAW.DIM_MSG_CONV_STATE`
    ;;

  dimension: name {
    type: string
    sql: ${TABLE}.NAME ;;
  }

  dimension: state_id {
    type: number
    sql: ${TABLE}.STATE_ID ;;
  }

  measure: count {
    type: count
    drill_fields: [name]
  }
}
