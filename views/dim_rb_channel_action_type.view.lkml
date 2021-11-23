view: dim_rb_channel_action_type {
  sql_table_name: `LP_RAW.DIM_RB_CHANNEL_ACTION_TYPE`
    ;;

  dimension: channel_action_type {
    type: string
    sql: ${TABLE}.CHANNEL_ACTION_TYPE ;;
  }

  dimension: channel_action_type_id {
    type: number
    sql: ${TABLE}.CHANNEL_ACTION_TYPE_ID ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
