view: dim_impression_response_type {
  sql_table_name: `LP_RAW.DIM_IMPRESSION_RESPONSE_TYPE`
    ;;

  dimension: disable_ind {
    type: number
    sql: ${TABLE}.DISABLE_IND ;;
  }

  dimension: impression_response_type_id {
    type: number
    sql: ${TABLE}.IMPRESSION_RESPONSE_TYPE_ID ;;
  }

  dimension: impression_response_type_name {
    type: string
    sql: ${TABLE}.IMPRESSION_RESPONSE_TYPE_NAME ;;
  }

  measure: count {
    type: count
    drill_fields: [impression_response_type_name]
  }
}
