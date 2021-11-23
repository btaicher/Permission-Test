view: rpt_fa_msg_secured_form {
  sql_table_name: `LP_RAW.RPT_FA_MSG_SECURED_FORM`
    ;;

  dimension: account_id {
    type: string
    sql: ${TABLE}.account_id ;;
  }

  dimension: agent_group_id {
    type: number
    sql: ${TABLE}.agent_group_id ;;
  }

  dimension: agent_id {
    type: string
    sql: ${TABLE}.agent_id ;;
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

  dimension: channel_id {
    type: number
    sql: ${TABLE}.channel_id ;;
  }

  dimension: consumer_id {
    type: string
    sql: ${TABLE}.consumer_id ;;
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

  dimension: engagement_id {
    type: number
    sql: ${TABLE}.engagement_id ;;
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

  dimension_group: event {
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
    sql: ${TABLE}.event_time ;;
  }

  dimension: farm_id {
    type: number
    sql: ${TABLE}.farm_id ;;
  }

  dimension: form_id {
    type: number
    sql: ${TABLE}.form_id ;;
  }

  dimension: form_status_id {
    type: number
    sql: ${TABLE}.form_status_id ;;
  }

  dimension: form_unique_id {
    type: string
    sql: ${TABLE}.form_unique_id ;;
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

  dimension: md5_key {
    type: string
    sql: ${TABLE}.md5_key ;;
  }

  dimension_group: pci_end {
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
    sql: ${TABLE}.pci_end_time ;;
  }

  dimension_group: pci_start {
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
    sql: ${TABLE}.pci_start_time ;;
  }

  dimension: software_id {
    type: string
    sql: ${TABLE}.software_id ;;
  }

  dimension: source_files {
    type: string
    sql: ${TABLE}.source_files ;;
  }

  dimension: window_end_timestamp {
    type: number
    sql: ${TABLE}.window_end_timestamp ;;
  }

  measure: count {
    type: count
    drill_fields: [job_name]
  }
}
