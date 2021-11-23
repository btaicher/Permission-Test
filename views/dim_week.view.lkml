view: dim_week {
  sql_table_name: `LP_RAW.DIM_WEEK`
    ;;

  dimension: start_of_week {
    type: number
    sql: ${TABLE}.START_OF_WEEK ;;
  }

  dimension: week_id {
    type: number
    sql: ${TABLE}.WEEK_ID ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
