view: dim_survey_form {
  sql_table_name: `LP_RAW.DIM_SURVEY_FORM`
    ;;

  dimension: account_id {
    type: string
    sql: ${TABLE}.ACCOUNT_ID ;;
  }

  dimension: active_survey_ind {
    type: number
    sql: ${TABLE}.ACTIVE_SURVEY_IND ;;
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

  dimension: is_default {
    type: number
    sql: ${TABLE}.IS_DEFAULT ;;
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

  dimension: survey_deleted_ind {
    type: number
    sql: ${TABLE}.SURVEY_DELETED_IND ;;
  }

  dimension: survey_displayed_ind {
    type: number
    sql: ${TABLE}.SURVEY_DISPLAYED_IND ;;
  }

  dimension: survey_id {
    type: number
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
