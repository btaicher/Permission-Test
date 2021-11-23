view: dim_msg_survey_flow {
  sql_table_name: `LP_RAW.DIM_MSG_SURVEY_FLOW`
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

  dimension: last_revision_id {
    type: number
    sql: ${TABLE}.LAST_REVISION_ID ;;
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

  dimension: survey_active_ind {
    type: number
    sql: ${TABLE}.SURVEY_ACTIVE_IND ;;
  }

  dimension: survey_deleted_ind {
    type: number
    sql: ${TABLE}.SURVEY_DELETED_IND ;;
  }

  dimension: survey_desc {
    type: string
    sql: ${TABLE}.SURVEY_DESC ;;
  }

  dimension: survey_id {
    type: string
    sql: ${TABLE}.SURVEY_ID ;;
  }

  dimension: survey_name {
    type: string
    sql: ${TABLE}.SURVEY_NAME ;;
  }

  dimension: survey_type_id {
    type: number
    sql: ${TABLE}.SURVEY_TYPE_ID ;;
  }

  measure: count {
    type: count
    drill_fields: [survey_name]
  }
}
