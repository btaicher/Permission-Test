view: dim_device {
  sql_table_name: `LP_RAW.DIM_DEVICE`
    ;;

  dimension: device_code {
    type: string
    sql: ${TABLE}.DEVICE_CODE ;;
  }

  dimension: device_id {
    type: number
    sql: ${TABLE}.DEVICE_ID ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
