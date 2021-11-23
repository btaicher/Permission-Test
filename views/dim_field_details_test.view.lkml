view: dim_field_details_test {
  sql_table_name: `LP_RAW.DIM_FIELD_DETAILS_test`
    ;;

  dimension: analysis_type {
    type: string
    sql: ${TABLE}.ANALYSIS_TYPE ;;
  }

  dimension: dashboard {
    type: string
    sql: ${TABLE}.DASHBOARD ;;
  }

  dimension: description {
    type: string
    sql: ${TABLE}.DESCRIPTION ;;
  }

  dimension: element {
    type: string
    sql: ${TABLE}.ELEMENT ;;
  }

  dimension: element_name {
    type: string
    sql: ${TABLE}.ELEMENT_NAME ;;
  }

  dimension: filtered_by {
    type: string
    sql: ${TABLE}.FILTERED_BY ;;
  }

  dimension: formula {
    type: string
    sql: ${TABLE}.FORMULA ;;
  }

  measure: count {
    type: count
    drill_fields: [element_name]
  }
}
