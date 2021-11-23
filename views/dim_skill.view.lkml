view: dim_skill {
  sql_table_name: `LP_RAW.DIM_SKILL`
    ;;

  dimension: a2_a_account_target {
    type: string
    sql: ${TABLE}.A2A_ACCOUNT_TARGET ;;
  }

  dimension: a2_a_chat_transfer_ind {
    type: number
    sql: ${TABLE}.A2A_CHAT_TRANSFER_IND ;;
  }

  dimension: a2_a_transfer_alerts_ind {
    type: number
    sql: ${TABLE}.A2A_TRANSFER_ALERTS_IND ;;
  }

  dimension: a2_a_transfer_hist_ind {
    type: number
    sql: ${TABLE}.A2A_TRANSFER_HIST_IND ;;
  }

  dimension: a2_a_transfer_skill_ind {
    type: number
    sql: ${TABLE}.A2A_TRANSFER_SKILL_IND ;;
  }

  dimension: a2_a_transfer_transcripts_ind {
    type: number
    sql: ${TABLE}.A2A_TRANSFER_TRANSCRIPTS_IND ;;
  }

  dimension: a2_a_transfer_ude_ind {
    type: number
    sql: ${TABLE}.A2A_TRANSFER_UDE_IND ;;
  }

  dimension: a2_a_voice_transfer_ind {
    type: number
    sql: ${TABLE}.A2A_VOICE_TRANSFER_IND ;;
  }

  dimension: account_id {
    type: string
    sql: ${TABLE}.ACCOUNT_ID ;;
  }

  dimension: call_timeout_minutes {
    type: number
    sql: ${TABLE}.CALL_TIMEOUT_MINUTES ;;
  }

  dimension: calls_avail_days_in_week {
    type: string
    sql: ${TABLE}.CALLS_AVAIL_DAYS_IN_WEEK ;;
  }

  dimension: calls_time_zone {
    type: string
    sql: ${TABLE}.CALLS_TIME_ZONE ;;
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

  dimension: default_skill_ind {
    type: number
    sql: ${TABLE}.DEFAULT_SKILL_IND ;;
  }

  dimension: disable_ind {
    type: number
    sql: ${TABLE}.DISABLE_IND ;;
  }

  dimension: dummy_skill_ind {
    type: number
    sql: ${TABLE}.DUMMY_SKILL_IND ;;
  }

  dimension: email {
    type: string
    sql: ${TABLE}.EMAIL ;;
  }

  dimension: enable_chat_ind {
    type: number
    sql: ${TABLE}.ENABLE_CHAT_IND ;;
  }

  dimension: enable_offline_ind {
    type: number
    sql: ${TABLE}.ENABLE_OFFLINE_IND ;;
  }

  dimension: enable_ticket_ind {
    type: number
    sql: ${TABLE}.ENABLE_TICKET_IND ;;
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

  dimension: max_calls_per_hour {
    type: number
    sql: ${TABLE}.MAX_CALLS_PER_HOUR ;;
  }

  dimension: max_wait_time_sec {
    type: number
    sql: ${TABLE}.MAX_WAIT_TIME_SEC ;;
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

  dimension: process_id {
    type: string
    sql: ${TABLE}.PROCESS_ID ;;
  }

  dimension: remote_acd_ind {
    type: number
    sql: ${TABLE}.REMOTE_ACD_IND ;;
  }

  dimension: skill_desc {
    type: string
    sql: ${TABLE}.SKILL_DESC ;;
  }

  dimension: skill_id {
    type: number
    sql: ${TABLE}.SKILL_ID ;;
  }

  dimension: skill_name {
    type: string
    sql: ${TABLE}.SKILL_NAME ;;
  }

  measure: count {
    type: count
    drill_fields: [skill_name]
  }
}
