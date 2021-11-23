view: dim_annotation_cause_event {
  sql_table_name: `LP_RAW.DIM_ANNOTATION_CAUSE_EVENT`
    ;;

  dimension: cause_event_id {
    type: number
    sql: ${TABLE}.CAUSE_EVENT_ID ;;
  }

  dimension: cause_event_name {
    type: string
    sql: ${TABLE}.CAUSE_EVENT_NAME ;;
  }

  measure: count {
    type: count
    drill_fields: [cause_event_name]
  }
}
