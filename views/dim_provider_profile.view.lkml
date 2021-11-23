view: dim_provider_profile {
  sql_table_name: `LP_RAW.DIM_PROVIDER_PROFILE`
    ;;

  dimension_group: cdc_insert {
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
    sql: ${TABLE}.CDC_INSERT_TIME ;;
  }

  dimension: handler_id {
    type: string
    sql: ${TABLE}.HANDLER_ID ;;
  }

  dimension_group: modify {
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
    sql: ${TABLE}.MODIFY_DATE ;;
  }

  dimension: provider_id {
    type: string
    sql: ${TABLE}.PROVIDER_ID ;;
  }

  dimension: reference_name {
    type: string
    sql: ${TABLE}.REFERENCE_NAME ;;
  }

  measure: count {
    type: count
    drill_fields: [reference_name]
  }
}
