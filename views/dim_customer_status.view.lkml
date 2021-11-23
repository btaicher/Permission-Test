view: dim_customer_status {
  sql_table_name: `LP_RAW.DIM_CUSTOMER_STATUS`
    ;;

  dimension: account_id {
    type: string
    sql: ${TABLE}.ACCOUNT_ID ;;
  }

  dimension: customer_status {
    type: string
    sql: ${TABLE}.CUSTOMER_STATUS ;;
  }

  dimension: customer_status_id {
    type: number
    sql: ${TABLE}.CUSTOMER_STATUS_ID ;;
  }

  dimension: deleted_ind {
    type: number
    sql: ${TABLE}.DELETED_IND ;;
  }

  dimension_group: insert {
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
    sql: ${TABLE}.INSERT_DATE ;;
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

  measure: count {
    type: count
    drill_fields: []
  }
}
