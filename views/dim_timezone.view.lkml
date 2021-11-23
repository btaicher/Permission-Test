view: dim_timezone {
  sql_table_name: `LP_RAW.DIM_TIMEZONE`
    ;;

  dimension: tz_desc {
    type: string
    sql: ${TABLE}.TZ_DESC ;;
  }

  dimension: tz_key {
    type: number
    sql: ${TABLE}.TZ_KEY ;;
  }

  dimension: tz_value {
    type: string
    sql: ${TABLE}.TZ_VALUE ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
