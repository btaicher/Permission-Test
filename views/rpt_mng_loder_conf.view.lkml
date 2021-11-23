view: rpt_mng_loder_conf {
  sql_table_name: `LP_RAW.RPT_MNG_LODER_CONF`
    ;;

  dimension: account_id {
    type: string
    sql: ${TABLE}.ACCOUNT_ID ;;
  }

  dimension: attribution_type_id {
    type: number
    sql: ${TABLE}.ATTRIBUTION_TYPE_ID ;;
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

  dimension: change_ind {
    type: number
    sql: ${TABLE}.CHANGE_IND ;;
  }

  dimension: cross_window {
    type: number
    sql: ${TABLE}.CROSS_WINDOW ;;
  }

  dimension: currency_code {
    type: string
    sql: ${TABLE}.CURRENCY_CODE ;;
  }

  dimension: full_loader_time_frame_days {
    type: number
    sql: ${TABLE}.FULL_LOADER_TIME_FRAME_DAYS ;;
  }

  dimension: incremental_loader_time_frame_days {
    type: number
    sql: ${TABLE}.INCREMENTAL_LOADER_TIME_FRAME_DAYS ;;
  }

  dimension: load_seq {
    type: number
    sql: ${TABLE}.LOAD_SEQ ;;
  }

  dimension: msg_attribution_type_id {
    type: number
    sql: ${TABLE}.MSG_ATTRIBUTION_TYPE_ID ;;
  }

  dimension: process_id {
    type: string
    sql: ${TABLE}.PROCESS_ID ;;
  }

  dimension: timezone {
    type: string
    sql: ${TABLE}.TIMEZONE ;;
  }

  dimension: tz_deviation {
    type: number
    sql: ${TABLE}.TZ_DEVIATION ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
