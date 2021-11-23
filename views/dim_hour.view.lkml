view: dim_hour {
  sql_table_name: `LP_RAW.DIM_HOUR`
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

  dimension: hour_desc {
    type: string
    sql: ${TABLE}.HOUR_DESC ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
