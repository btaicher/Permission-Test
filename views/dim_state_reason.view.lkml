view: dim_state_reason {
  sql_table_name: `LP_RAW.DIM_STATE_REASON`
    ;;

  dimension: account_id {
    type: string
    sql: ${TABLE}.ACCOUNT_ID ;;
  }

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

  dimension_group: cdc_update {
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
    sql: ${TABLE}.CDC_UPDATE_TIME ;;
  }

  dimension: deleted_ind {
    type: number
    sql: ${TABLE}.DELETED_IND ;;
  }

  dimension: reason_name {
    type: string
    sql: ${TABLE}.REASON_NAME ;;
  }

  dimension: state_reason_id {
    type: string
    sql: ${TABLE}.STATE_REASON_ID ;;
  }

  measure: count {
    type: count
    drill_fields: [reason_name]
  }
}
