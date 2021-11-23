view: dim_campaign {
  sql_table_name: `LP_RAW.DIM_CAMPAIGN`
    ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.ID ;;
  }

  dimension: account_id {
    type: string
    sql: ${TABLE}.ACCOUNT_ID ;;
  }

  dimension: control_group {
    type: number
    sql: ${TABLE}.CONTROL_GROUP ;;
  }

  dimension: description {
    type: string
    sql: ${TABLE}.DESCRIPTION ;;
  }

  dimension_group: expiration {
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
    sql: ${TABLE}.EXPIRATION_DATE ;;
  }

  dimension: goal_id {
    type: number
    sql: ${TABLE}.GOAL_ID ;;
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

  dimension: is_deleted_ind {
    type: number
    sql: ${TABLE}.IS_DELETED_IND ;;
  }

  dimension: lob_id {
    type: number
    sql: ${TABLE}.LOB_ID ;;
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

  dimension: name {
    type: string
    sql: ${TABLE}.NAME ;;
  }

  dimension: operation_time_from {
    type: string
    sql: ${TABLE}.OPERATION_TIME_FROM ;;
  }

  dimension: operation_time_to {
    type: string
    sql: ${TABLE}.OPERATION_TIME_TO ;;
  }

  dimension_group: publish {
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
    sql: ${TABLE}.PUBLISH_DATE ;;
  }

  dimension_group: start {
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
    sql: ${TABLE}.START_DATE ;;
  }

  dimension: status {
    type: string
    sql: ${TABLE}.STATUS ;;
  }

  dimension: time_zone {
    type: string
    sql: ${TABLE}.TIME_ZONE ;;
  }

  dimension: visitor_profile_id {
    type: number
    sql: ${TABLE}.VISITOR_PROFILE_ID ;;
  }

  measure: count {
    type: count
    drill_fields: [id, name]
  }
}
