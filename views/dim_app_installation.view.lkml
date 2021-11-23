view: dim_app_installation {
  sql_table_name: `LP_RAW.DIM_APP_INSTALLATION`
    ;;

  dimension: account_id {
    type: string
    sql: ${TABLE}.ACCOUNT_ID ;;
  }

  dimension: app_installation_id {
    type: string
    sql: ${TABLE}.APP_INSTALLATION_ID ;;
  }

  dimension: app_installation_name {
    type: string
    sql: ${TABLE}.APP_INSTALLATION_NAME ;;
  }

  dimension_group: etl_insert {
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
    sql: ${TABLE}.ETL_INSERT_TIME ;;
  }

  dimension_group: etl_update {
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
    sql: ${TABLE}.ETL_UPDATE_TIME ;;
  }

  dimension: is_deleted {
    type: number
    sql: ${TABLE}.IS_DELETED ;;
  }

  dimension: is_enabled {
    type: number
    sql: ${TABLE}.IS_ENABLED ;;
  }

  dimension: software_id {
    type: string
    sql: ${TABLE}.SOFTWARE_ID ;;
  }

  dimension: software_name {
    type: string
    sql: ${TABLE}.SOFTWARE_NAME ;;
  }

  measure: count {
    type: count
    drill_fields: [app_installation_name, software_name]
  }
}
