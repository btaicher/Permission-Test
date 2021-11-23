view: rpt_agg_msg_conv_agent {
  sql_table_name: `LP_RAW.RPT_AGG_MSG_CONV_AGENT`
    ;;

  dimension: abandoned {
    type: number
    sql: ${TABLE}.abandoned ;;
  }

  dimension: account_id {
    type: string
    sql: ${TABLE}.account_id ;;
  }

  dimension: agent_accepts {
    type: number
    sql: ${TABLE}.agent_accepts ;;
  }

  dimension: agent_conv_type {
    type: number
    sql: ${TABLE}.agent_conv_type ;;
  }

  dimension: agent_first_response_dur_days {
    type: number
    sql: ${TABLE}.agent_first_response_dur_days ;;
  }

  dimension: agent_group_id {
    type: number
    sql: ${TABLE}.agent_group_id ;;
  }

  dimension: agent_id {
    type: string
    sql: ${TABLE}.agent_id ;;
  }

  dimension: agent_messages {
    type: number
    sql: ${TABLE}.agent_messages ;;
  }

  dimension: agent_response_from_assignment {
    type: number
    sql: ${TABLE}.agent_response_from_assignment ;;
  }

  dimension: agent_response_time_days {
    type: number
    sql: ${TABLE}.agent_response_time_days ;;
  }

  dimension: agent_responses {
    type: number
    sql: ${TABLE}.agent_responses ;;
  }

  dimension_group: analysis {
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
    sql: ${TABLE}.analysis_date ;;
  }

  dimension: app_installation_id {
    type: string
    sql: ${TABLE}.app_installation_id ;;
  }

  dimension: assignments {
    type: number
    sql: ${TABLE}.assignments ;;
  }

  dimension: bot_escalated_conversation_with_no_response_from_human {
    type: number
    sql: ${TABLE}.bot_escalated_conversation_with_no_response_from_human ;;
  }

  dimension: bot_interactive {
    type: number
    sql: ${TABLE}.bot_interactive ;;
  }

  dimension_group: bqetl_create {
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
    sql: ${TABLE}.bqetl_create_time ;;
  }

  dimension: bqetl_jobid {
    type: string
    sql: ${TABLE}.bqetl_jobid ;;
  }

  dimension_group: bqetl_update {
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
    sql: ${TABLE}.bqetl_update_time ;;
  }

  dimension: campaign_id {
    type: number
    sql: ${TABLE}.campaign_id ;;
  }

  dimension: closed_by_agent {
    type: number
    sql: ${TABLE}.closed_by_agent ;;
  }

  dimension: closed_by_consumer {
    type: number
    sql: ${TABLE}.closed_by_consumer ;;
  }

  dimension: closed_by_system {
    type: number
    sql: ${TABLE}.closed_by_system ;;
  }

  dimension: consumer_id {
    type: string
    sql: ${TABLE}.consumer_id ;;
  }

  dimension: consumer_wait_time_to_first_human_agent_response_after_transfer {
    type: number
    sql: ${TABLE}.consumer_wait_time_to_first_human_agent_response_after_transfer ;;
  }

  dimension_group: conv_end {
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
    sql: ${TABLE}.conv_end_time ;;
  }

  dimension: conv_id {
    type: string
    sql: ${TABLE}.conv_id ;;
  }

  dimension: conv_skill_id {
    type: number
    sql: ${TABLE}.conv_skill_id ;;
  }

  dimension_group: conv_start {
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
    sql: ${TABLE}.conv_start_time ;;
  }

  dimension: conv_state_id {
    type: number
    sql: ${TABLE}.conv_state_id ;;
  }

  dimension: conversation_handler_by_bot {
    type: number
    sql: ${TABLE}.conversation_handler_by_bot ;;
  }

  dimension: csat {
    type: number
    sql: ${TABLE}.csat ;;
  }

  dimension: engagement_id {
    type: number
    sql: ${TABLE}.engagement_id ;;
  }

  dimension: escalations_by_bot {
    type: number
    sql: ${TABLE}.escalations_by_bot ;;
  }

  dimension_group: etl_insert {
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
    sql: ${TABLE}.etl_insert_time ;;
  }

  dimension: farm_id {
    type: number
    sql: ${TABLE}.farm_id ;;
  }

  dimension: fcr {
    type: number
    sql: ${TABLE}.fcr ;;
  }

  dimension: first_conv_ind {
    type: number
    sql: ${TABLE}.first_conv_ind ;;
  }

  dimension: first_human_message_after_bot_dur_days {
    type: number
    sql: ${TABLE}.first_human_message_after_bot_dur_days ;;
  }

  dimension: first_human_message_dur_days {
    type: number
    sql: ${TABLE}.first_human_message_dur_days ;;
  }

  dimension: first_response_agent_assignment_after_transfer {
    type: number
    sql: ${TABLE}.first_response_agent_assignment_after_transfer ;;
  }

  dimension: first_response_from_agent_assignment {
    type: number
    sql: ${TABLE}.first_response_from_agent_assignment ;;
  }

  dimension: first_response_from_agent_assignment_new_conversation {
    type: number
    sql: ${TABLE}.first_response_from_agent_assignment_new_conversation ;;
  }

  dimension: handler_id {
    type: string
    sql: ${TABLE}.handler_id ;;
  }

  dimension: human_interactive {
    type: number
    sql: ${TABLE}.human_interactive ;;
  }

  dimension: initial_device_id {
    type: number
    sql: ${TABLE}.initial_device_id ;;
  }

  dimension: integration_source_id {
    type: number
    sql: ${TABLE}.integration_source_id ;;
  }

  dimension: interactive {
    type: number
    sql: ${TABLE}.interactive ;;
  }

  dimension: job_id {
    type: string
    sql: ${TABLE}.job_id ;;
  }

  dimension: job_name {
    type: string
    sql: ${TABLE}.job_name ;;
  }

  dimension: job_version {
    type: string
    sql: ${TABLE}.job_version ;;
  }

  dimension: lob_id {
    type: number
    sql: ${TABLE}.lob_id ;;
  }

  dimension: matched_intents {
    type: number
    sql: ${TABLE}.matched_intents ;;
  }

  dimension: matched_nlu_intents {
    type: number
    sql: ${TABLE}.matched_nlu_intents ;;
  }

  dimension: mcs {
    type: number
    sql: ${TABLE}.mcs ;;
  }

  dimension: md5_key {
    type: string
    sql: ${TABLE}.md5_key ;;
  }

  dimension: no_of_assigned_agent_responses {
    type: number
    sql: ${TABLE}.no_of_assigned_agent_responses ;;
  }

  dimension: no_of_first_response_from_agent_assignment {
    type: number
    sql: ${TABLE}.no_of_first_response_from_agent_assignment ;;
  }

  dimension: no_of_first_response_from_agent_assignment_after_transfer {
    type: number
    sql: ${TABLE}.no_of_first_response_from_agent_assignment_after_transfer ;;
  }

  dimension: nps {
    type: number
    sql: ${TABLE}.nps ;;
  }

  dimension: permission_id {
    type: number
    sql: ${TABLE}.permission_id ;;
  }

  dimension: provider_id {
    type: string
    sql: ${TABLE}.provider_id ;;
  }

  dimension: reference_name {
    type: string
    sql: ${TABLE}.reference_name ;;
  }

  dimension: resolution_rate {
    type: number
    sql: ${TABLE}.resolution_rate ;;
  }

  dimension: resumed_by_agent {
    type: number
    sql: ${TABLE}.resumed_by_agent ;;
  }

  dimension: software_id {
    type: string
    sql: ${TABLE}.software_id ;;
  }

  dimension: source_files {
    type: string
    sql: ${TABLE}.source_files ;;
  }

  dimension: takeovers_by_agent {
    type: number
    sql: ${TABLE}.takeovers_by_agent ;;
  }

  dimension: takeovers_from_agent {
    type: number
    sql: ${TABLE}.takeovers_from_agent ;;
  }

  dimension: transfers {
    type: number
    sql: ${TABLE}.transfers ;;
  }

  dimension: transfers_2agent {
    type: number
    sql: ${TABLE}.transfers_2agent ;;
  }

  dimension: transfers_2skill {
    type: number
    sql: ${TABLE}.transfers_2skill ;;
  }

  dimension: transfers_back2queue {
    type: number
    sql: ${TABLE}.transfers_back2queue ;;
  }

  dimension: unmatched_intents {
    type: number
    sql: ${TABLE}.unmatched_intents ;;
  }

  dimension: user_type_id {
    type: number
    sql: ${TABLE}.user_type_id ;;
  }

  dimension: window_end_timestamp {
    type: number
    sql: ${TABLE}.window_end_timestamp ;;
  }

  measure: count {
    type: count
    drill_fields: [reference_name, job_name]
  }
}
