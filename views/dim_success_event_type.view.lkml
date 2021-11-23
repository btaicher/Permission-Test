view: dim_success_event_type {
  sql_table_name: `LP_RAW.DIM_SUCCESS_EVENT_TYPE`
    ;;

  dimension: disable_ind {
    type: number
    sql: ${TABLE}.DISABLE_IND ;;
  }

  dimension: success_event_type_id {
    type: number
    sql: ${TABLE}.SUCCESS_EVENT_TYPE_ID ;;
  }

  dimension: success_event_type_name {
    type: string
    sql: ${TABLE}.SUCCESS_EVENT_TYPE_NAME ;;
  }

  measure: count {
    type: count
    drill_fields: [success_event_type_name]
  }
}
