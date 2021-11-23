view: dim_priority_unseg {
  sql_table_name: `LP_RAW.DIM_PRIORITY_UNSEG`
    ;;

  dimension: action_type_id {
    type: number
    sql: ${TABLE}.ACTION_TYPE_ID ;;
  }

  dimension: channel_id {
    type: number
    sql: ${TABLE}.CHANNEL_ID ;;
  }

  dimension: priority {
    type: number
    sql: ${TABLE}.PRIORITY ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
