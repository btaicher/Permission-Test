view: rpt_fa_agent_activity_vw {
  sql_table_name: `LP_RAW.RPT_FA_AGENT_ACTIVITY_VW`
    ;;

  dimension: account_id {
    type: string
    sql: ${TABLE}.ACCOUNT_ID ;;
  }

  dimension: agent_group_id {
    type: number
    sql: ${TABLE}.AGENT_GROUP_ID ;;
  }

  dimension: agent_id {
    type: string
    sql: ${TABLE}.AGENT_ID ;;
  }

  dimension: away_engaged_time {
    type: number
    sql: ${TABLE}.AWAY_ENGAGED_TIME ;;
  }

  dimension: away_time {
    type: number
    sql: ${TABLE}.AWAY_TIME ;;
  }

  dimension: back_in_5_time {
    type: number
    sql: ${TABLE}.BACK_IN_5_TIME ;;
  }

  dimension: backin5_engaged_time {
    type: number
    sql: ${TABLE}.BACKIN5_ENGAGED_TIME ;;
  }

  dimension_group: change_event_time_15_m {
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
    sql: ${TABLE}.CHANGE_EVENT_TIME_15M ;;
  }

  dimension: duration_days {
    type: number
    sql: ${TABLE}.DURATION_DAYS ;;
  }

  dimension: online_time {
    type: number
    sql: ${TABLE}.ONLINE_TIME ;;
  }

  dimension: prev_state_id {
    type: number
    sql: ${TABLE}.PREV_STATE_ID ;;
  }

  dimension: prev_state_reason_id {
    type: string
    sql: ${TABLE}.PREV_STATE_REASON_ID ;;
  }

  dimension: user_type_id {
    type: number
    sql: ${TABLE}.USER_TYPE_ID ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
