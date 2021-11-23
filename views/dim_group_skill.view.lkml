view: dim_group_skill {
  sql_table_name: `LP_RAW.DIM_GROUP_SKILL`
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

  dimension: group_id {
    type: number
    sql: ${TABLE}.GROUP_ID ;;
  }

  dimension: group_name {
    type: string
    sql: ${TABLE}.GROUP_NAME ;;
  }

  dimension: lock_for_delete_ind {
    type: yesno
    sql: ${TABLE}.LOCK_FOR_DELETE_IND ;;
  }

  dimension: process_id {
    type: string
    sql: ${TABLE}.PROCESS_ID ;;
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
    drill_fields: [group_name, skill_name]
  }
}
