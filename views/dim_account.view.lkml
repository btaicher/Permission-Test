view: dim_account {
  sql_table_name: `LP_RAW.DIM_ACCOUNT`
    ;;

  dimension: account_created_in_version {
    type: string
    sql: ${TABLE}.ACCOUNT_CREATED_IN_VERSION ;;
  }

  dimension_group: account_creation_dt {
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
    sql: ${TABLE}.ACCOUNT_CREATION_DT ;;
  }

  dimension: account_id {
    type: string
    sql: ${TABLE}.ACCOUNT_ID ;;
  }

  dimension: account_name {
    type: string
    sql: ${TABLE}.ACCOUNT_NAME ;;
  }

  dimension: active_ind {
    type: number
    sql: ${TABLE}.ACTIVE_IND ;;
  }

  dimension: company_name {
    type: string
    sql: ${TABLE}.COMPANY_NAME ;;
  }

  dimension: control_group_size {
    type: number
    sql: ${TABLE}.CONTROL_GROUP_SIZE ;;
  }

  dimension: disable_ind {
    type: number
    sql: ${TABLE}.DISABLE_IND ;;
  }

  dimension: email {
    type: string
    sql: ${TABLE}.EMAIL ;;
  }

  dimension: encryption_key_id {
    type: number
    sql: ${TABLE}.ENCRYPTION_KEY_ID ;;
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

  dimension: inv_timeout_sec {
    type: number
    sql: ${TABLE}.INV_TIMEOUT_SEC ;;
  }

  dimension: lang {
    type: string
    sql: ${TABLE}.LANG ;;
  }

  dimension: max_engaged_pages {
    type: number
    sql: ${TABLE}.MAX_ENGAGED_PAGES ;;
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

  dimension: num_of_employees {
    type: number
    sql: ${TABLE}.NUM_OF_EMPLOYEES ;;
  }

  dimension: oem {
    type: string
    sql: ${TABLE}.OEM ;;
  }

  dimension: rep_server_domain {
    type: string
    sql: ${TABLE}.REP_SERVER_DOMAIN ;;
  }

  dimension: secure_connection_ind {
    type: number
    sql: ${TABLE}.SECURE_CONNECTION_IND ;;
  }

  dimension: server_domain {
    type: string
    sql: ${TABLE}.SERVER_DOMAIN ;;
  }

  dimension: site_class {
    type: number
    sql: ${TABLE}.SITE_CLASS ;;
  }

  dimension_group: site_class_expiration_dt {
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
    sql: ${TABLE}.SITE_CLASS_EXPIRATION_DT ;;
  }

  dimension: varid {
    type: string
    sql: ${TABLE}.VARID ;;
  }

  measure: count {
    type: count
    drill_fields: [company_name, account_name]
  }
}
