view: dim_operating_system {
  sql_table_name: `LP_RAW.DIM_OPERATING_SYSTEM`
    ;;

  dimension: os_id {
    type: number
    sql: ${TABLE}.OS_ID ;;
  }

  dimension: os_name {
    type: string
    sql: ${TABLE}.OS_NAME ;;
  }

  measure: count {
    type: count
    drill_fields: [os_name]
  }
}
