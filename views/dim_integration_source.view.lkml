view: dim_integration_source {
  sql_table_name: `LP_RAW.DIM_INTEGRATION_SOURCE`
    ;;

  dimension: comment {
    type: string
    sql: ${TABLE}.COMMENT ;;
  }

  dimension: disable_ind {
    type: number
    sql: ${TABLE}.DISABLE_IND ;;
  }

  dimension: integration_source_event_name {
    type: string
    sql: ${TABLE}.INTEGRATION_SOURCE_EVENT_NAME ;;
  }

  dimension: integration_source_id {
    type: number
    sql: ${TABLE}.INTEGRATION_SOURCE_ID ;;
  }

  dimension: integration_source_name {
    type: string
    sql: ${TABLE}.INTEGRATION_SOURCE_NAME ;;
  }

  measure: count {
    type: count
    drill_fields: [integration_source_event_name, integration_source_name]
  }
}
