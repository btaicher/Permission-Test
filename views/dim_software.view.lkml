view: dim_software {
  sql_table_name: `LP_RAW.DIM_SOFTWARE`
    ;;

  dimension: account_id {
    type: string
    sql: ${TABLE}.ACCOUNT_ID ;;
  }

  dimension_group: etl_insert {
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
    sql: ${TABLE}.ETL_INSERT_TIME ;;
  }

  dimension: software_id {
    type: string
    sql: ${TABLE}.SOFTWARE_ID ;;
  }

  dimension: software_name {
    type: string
    sql: ${TABLE}.SOFTWARE_NAME ;;
  }

  measure: count {
    type: count
    drill_fields: [software_name]
  }
}
