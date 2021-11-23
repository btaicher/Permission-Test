view: dim_month {
  sql_table_name: `LP_RAW.DIM_MONTH`
    ;;

  dimension: month_desc {
    type: string
    sql: ${TABLE}.MONTH_DESC ;;
  }

  dimension: month_id {
    type: number
    sql: ${TABLE}.MONTH_ID ;;
  }

  dimension: month_long_desc {
    type: string
    sql: ${TABLE}.MONTH_LONG_DESC ;;
  }

  dimension: start_of_month {
    type: number
    sql: ${TABLE}.START_OF_MONTH ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
