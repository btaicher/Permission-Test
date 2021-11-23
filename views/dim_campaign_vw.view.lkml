view: dim_campaign_vw {
  sql_table_name: `LP_RAW.DIM_CAMPAIGN_VW`
    ;;

  dimension: account_id {
    type: string
    sql: ${TABLE}.ACCOUNT_ID ;;
  }

  dimension: campaign_id {
    type: number
    sql: ${TABLE}.CAMPAIGN_ID ;;
  }

  dimension: campaign_name {
    type: string
    sql: ${TABLE}.CAMPAIGN_NAME ;;
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

  dimension: goal_name {
    type: string
    sql: ${TABLE}.GOAL_NAME ;;
  }

  dimension: goal_type_name {
    type: string
    sql: ${TABLE}.GOAL_TYPE_NAME ;;
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

  dimension: lob_name {
    type: string
    sql: ${TABLE}.LOB_NAME ;;
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

  dimension: status_desc {
    type: string
    sql: ${TABLE}.STATUS_DESC ;;
  }

  dimension: time_zone {
    type: string
    sql: ${TABLE}.TIME_ZONE ;;
  }

  measure: count {
    type: count
    drill_fields: [goal_type_name, goal_name, name, lob_name, campaign_name]
  }
}
