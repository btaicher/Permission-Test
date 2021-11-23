view: dim_attribution {
  sql_table_name: `LP_RAW.DIM_ATTRIBUTION`
    ;;

  dimension: attribution_type_id {
    type: number
    sql: ${TABLE}.ATTRIBUTION_TYPE_ID ;;
  }

  dimension: attribution_type_name {
    type: string
    sql: ${TABLE}.ATTRIBUTION_TYPE_NAME ;;
  }

  measure: count {
    type: count
    drill_fields: [attribution_type_name]
  }
}
