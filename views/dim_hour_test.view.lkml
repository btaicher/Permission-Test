view: dim_hour_test {
  sql_table_name: `LP_RAW.DIM_HOUR_test`
    ;;

  dimension_group: hour {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.HOUR ;;
  }

  dimension: hour_char {
    type: string
    sql: ${TABLE}.HOUR_CHAR ;;
  }

  dimension: hour_desc {
    type: string
    sql: ${TABLE}.HOUR_DESC ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
