view: dim_on_site_location {
  sql_table_name: `LP_RAW.DIM_ON_SITE_LOCATION`
    ;;

  dimension: account_id {
    type: string
    sql: ${TABLE}.ACCOUNT_ID ;;
  }

  dimension: app_installation_id {
    type: string
    sql: ${TABLE}.APP_INSTALLATION_ID ;;
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

  dimension: on_site_location_id {
    type: number
    sql: ${TABLE}.ON_SITE_LOCATION_ID ;;
  }

  dimension: on_site_location_name {
    type: string
    sql: ${TABLE}.ON_SITE_LOCATION_NAME ;;
  }

  measure: count {
    type: count
    drill_fields: [on_site_location_name]
  }
}
