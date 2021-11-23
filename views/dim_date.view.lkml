view: dim_date {
  sql_table_name: `LP_RAW.DIM_DATE`
    ;;

  dimension: date {
    type: number
    sql: ${TABLE}.DATE ;;
  }

  dimension: day_desc {
    type: string
    sql: ${TABLE}.DAY_DESC ;;
  }

  dimension: day_of_week {
    type: number
    sql: ${TABLE}.DAY_OF_WEEK ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
