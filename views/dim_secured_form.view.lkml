view: dim_secured_form {
  sql_table_name: `LP_RAW.DIM_SECURED_FORM`
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

  dimension_group: create {
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
    sql: ${TABLE}.CREATE_TIME ;;
  }

  dimension: deleted_ind {
    type: number
    sql: ${TABLE}.DELETED_IND ;;
  }

  dimension: form_id {
    type: number
    sql: ${TABLE}.FORM_ID ;;
  }

  dimension: form_name {
    type: string
    sql: ${TABLE}.FORM_NAME ;;
  }

  dimension_group: update {
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
    sql: ${TABLE}.UPDATE_TIME ;;
  }

  measure: count {
    type: count
    drill_fields: [form_name]
  }
}
