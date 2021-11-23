view: dim_agent_sharon {
  sql_table_name: `LP_RAW.dim_agent_sharon`
    ;;

  dimension: account_id {
    type: string
    sql: ${TABLE}.ACCOUNT_ID ;;
  }

  dimension: active {
    type: number
    sql: ${TABLE}.ACTIVE ;;
  }

  dimension: active_ind {
    type: number
    sql: ${TABLE}.ACTIVE_IND ;;
  }

  dimension: agent_id {
    type: string
    sql: ${TABLE}.AGENT_ID ;;
  }

  dimension: auto_answer_ind {
    type: number
    sql: ${TABLE}.AUTO_ANSWER_IND ;;
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

  dimension: deleted_ind {
    type: number
    sql: ${TABLE}.DELETED_IND ;;
  }

  dimension: disable_ind {
    type: number
    sql: ${TABLE}.DISABLE_IND ;;
  }

  dimension: email {
    type: string
    sql: ${TABLE}.EMAIL ;;
  }

  dimension: enabled {
    type: number
    sql: ${TABLE}.ENABLED ;;
  }

  dimension: enabled_ind {
    type: number
    sql: ${TABLE}.ENABLED_IND ;;
  }

  dimension: ext_sys_agent_id {
    type: string
    sql: ${TABLE}.EXT_SYS_AGENT_ID ;;
  }

  dimension: get_incoming_calls_ind {
    type: number
    sql: ${TABLE}.GET_INCOMING_CALLS_IND ;;
  }

  dimension: get_incoming_phone_calls_ind {
    type: number
    sql: ${TABLE}.GET_INCOMING_PHONE_CALLS_IND ;;
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

  dimension: login_name {
    type: string
    sql: ${TABLE}.LOGIN_NAME ;;
  }

  dimension: manager_ind {
    type: number
    sql: ${TABLE}.MANAGER_IND ;;
  }

  dimension: max_chats {
    type: number
    sql: ${TABLE}.MAX_CHATS ;;
  }

  dimension: max_concurrent_chats_per_call {
    type: number
    sql: ${TABLE}.MAX_CONCURRENT_CHATS_PER_CALL ;;
  }

  dimension: max_talkbypc_while_chatting {
    type: number
    sql: ${TABLE}.MAX_TALKBYPC_WHILE_CHATTING ;;
  }

  dimension: max_tickets {
    type: number
    sql: ${TABLE}.MAX_TICKETS ;;
  }

  dimension: member_of_group_id {
    type: number
    sql: ${TABLE}.MEMBER_OF_GROUP_ID ;;
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

  dimension: phone_console_id {
    type: number
    sql: ${TABLE}.PHONE_CONSOLE_ID ;;
  }

  dimension: process_id {
    type: string
    sql: ${TABLE}.PROCESS_ID ;;
  }

  dimension: rep_version {
    type: string
    sql: ${TABLE}.REP_VERSION ;;
  }

  dimension: skillids {
    type: string
    sql: ${TABLE}.skillids ;;
  }

  dimension: use_co_browse_ind {
    type: number
    sql: ${TABLE}.USE_CO_BROWSE_IND ;;
  }

  dimension: username {
    type: string
    sql: ${TABLE}.USERNAME ;;
  }

  measure: count {
    type: count
    drill_fields: [username, name, login_name]
  }
}
