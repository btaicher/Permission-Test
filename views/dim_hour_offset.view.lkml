view: dim_hour_offset {
  sql_table_name: `LP_RAW.DIM_HOUR_OFFSET`
    ;;

  dimension: hour_offset_desc {
    type: string
    sql: ${TABLE}.HOUR_OFFSET_DESC ;;
  }

  dimension: hour_offset_id {
    type: number
    sql: ${TABLE}.HOUR_OFFSET_ID ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
