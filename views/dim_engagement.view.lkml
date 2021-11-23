view: dim_engagement {
  sql_table_name: `LP_RAW.DIM_ENGAGEMENT`
    ;;

  dimension: account_id {
    type: string
    sql: ${TABLE}.ACCOUNT_ID ;;
  }

  dimension: app_installation_id {
    type: string
    sql: ${TABLE}.APP_INSTALLATION_ID ;;
  }

  dimension: campaign_id {
    type: number
    sql: ${TABLE}.CAMPAIGN_ID ;;
  }

  dimension: deleted_ind {
    type: number
    sql: ${TABLE}.DELETED_IND ;;
  }

  dimension: engagement_channel {
    type: number
    sql: ${TABLE}.ENGAGEMENT_CHANNEL ;;
  }

  dimension: engagement_desc {
    type: string
    sql: ${TABLE}.ENGAGEMENT_DESC ;;
  }

  dimension: engagement_id {
    type: number
    sql: ${TABLE}.ENGAGEMENT_ID ;;
  }

  dimension: engagement_lang {
    type: string
    sql: ${TABLE}.ENGAGEMENT_LANG ;;
  }

  dimension: engagement_name {
    type: string
    sql: ${TABLE}.ENGAGEMENT_NAME ;;
  }

  dimension: engagement_subtype {
    type: number
    sql: ${TABLE}.ENGAGEMENT_SUBTYPE ;;
  }

  dimension: engagement_type {
    type: number
    sql: ${TABLE}.ENGAGEMENT_TYPE ;;
  }

  dimension: follow_me_pages {
    type: number
    sql: ${TABLE}.FOLLOW_ME_PAGES ;;
  }

  dimension: follow_me_time {
    type: number
    sql: ${TABLE}.FOLLOW_ME_TIME ;;
  }

  dimension: ignore_max_wait_time_ind {
    type: number
    sql: ${TABLE}.IGNORE_MAX_WAIT_TIME_IND ;;
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

  dimension: interaction_type_id {
    type: number
    sql: ${TABLE}.INTERACTION_TYPE_ID ;;
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

  dimension: onsite_location_id {
    type: number
    sql: ${TABLE}.ONSITE_LOCATION_ID ;;
  }

  dimension: skill_id {
    type: number
    sql: ${TABLE}.SKILL_ID ;;
  }

  dimension: skill_name {
    type: string
    sql: ${TABLE}.SKILL_NAME ;;
  }

  dimension: visitor_behavior_id {
    type: number
    sql: ${TABLE}.VISITOR_BEHAVIOR_ID ;;
  }

  measure: count {
    type: count
    drill_fields: [skill_name, engagement_name]
  }
}
