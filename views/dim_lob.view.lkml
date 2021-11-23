view: dim_lob {
  sql_table_name: `LP_RAW.DIM_LOB`
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

  dimension_group: cdc_modify {
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
    sql: ${TABLE}.CDC_MODIFY_DATE ;;
  }

  dimension: deleted_ind {
    type: number
    sql: ${TABLE}.DELETED_IND ;;
  }

  dimension: description {
    type: string
    sql: ${TABLE}.DESCRIPTION ;;
  }

  dimension: lob_id {
    type: number
    sql: ${TABLE}.LOB_ID ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.NAME ;;
  }

  dimension: process_id {
    type: string
    sql: ${TABLE}.PROCESS_ID ;;
  }

  measure: count {
    type: count
    drill_fields: [name]
  }
}
