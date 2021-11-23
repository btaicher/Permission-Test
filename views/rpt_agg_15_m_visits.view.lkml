view: rpt_agg_15_m_visits {
  sql_table_name: `LP_RAW.RPT_AGG_15M_VISITS`
    ;;

  dimension: account_id {
    type: string
    sql: ${TABLE}.account_id ;;
  }

  dimension_group: agg {
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
    sql: ${TABLE}.agg_date ;;
  }

  dimension: app_installation_id {
    type: string
    sql: ${TABLE}.app_installation_id ;;
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

  dimension: device_id {
    type: number
    sql: ${TABLE}.device_id ;;
  }

  dimension: farm_id {
    type: string
    sql: ${TABLE}.farm_id ;;
  }

  dimension: job_id {
    type: string
    sql: ${TABLE}.job_id ;;
  }

  dimension: job_name {
    type: string
    sql: ${TABLE}.job_name ;;
  }

  dimension_group: job_run {
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
    sql: ${TABLE}.job_run_time ;;
  }

  dimension: job_version {
    type: string
    sql: ${TABLE}.job_version ;;
  }

  dimension: md5_key {
    type: string
    sql: ${TABLE}.md5_key ;;
  }

  dimension: visits {
    type: number
    sql: ${TABLE}.visits ;;
  }

  measure: count {
    type: count
    drill_fields: [job_name]
  }
}
