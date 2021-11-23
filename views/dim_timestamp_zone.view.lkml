view: dim_timestamp_zone {
  sql_table_name: `LP_RAW.DIM_TIMESTAMP_ZONE`
    ;;

  dimension_group: utc_tz_15_m {
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
    sql: ${TABLE}.UTC_TZ_15M ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
