view: dim_rel_cm_lob {
  sql_table_name: `LP_RAW.DIM_REL_CM_LOB`
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
    sql: ${TABLE}.CDC_INSERT_DATE ;;
  }

  dimension: cm_user_id {
    type: string
    sql: ${TABLE}.CM_USER_ID ;;
  }

  dimension: lob_id {
    type: number
    sql: ${TABLE}.LOB_ID ;;
  }

  dimension: process_id {
    type: string
    sql: ${TABLE}.PROCESS_ID ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
