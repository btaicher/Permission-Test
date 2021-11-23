view: dim_bil_credit_rate {
  sql_table_name: `LP_RAW.DIM_BIL_CREDIT_RATE`
    ;;

  dimension: action_type_id {
    type: number
    sql: ${TABLE}.ACTION_TYPE_ID ;;
  }

  dimension: channel_id {
    type: number
    sql: ${TABLE}.CHANNEL_ID ;;
  }

  dimension: credit_rate {
    type: number
    sql: ${TABLE}.CREDIT_RATE ;;
  }

  dimension_group: effective_from {
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
    sql: ${TABLE}.EFFECTIVE_FROM ;;
  }

  dimension_group: effective_to {
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
    sql: ${TABLE}.EFFECTIVE_TO ;;
  }

  dimension: is_active {
    type: yesno
    sql: ${TABLE}.IS_ACTIVE ;;
  }

  dimension: rate_id {
    type: number
    sql: ${TABLE}.RATE_ID ;;
  }

  dimension: uom_id {
    type: number
    sql: ${TABLE}.UOM_ID ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
