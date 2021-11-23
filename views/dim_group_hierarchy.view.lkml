view: dim_group_hierarchy {
  sql_table_name: `LP_RAW.DIM_GROUP_HIERARCHY`
    ;;

  dimension: account_id {
    type: string
    sql: ${TABLE}.ACCOUNT_ID ;;
  }

  dimension: active_ind {
    type: number
    sql: ${TABLE}.ACTIVE_IND ;;
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

  dimension: number_of_groups {
    type: number
    sql: ${TABLE}.NUMBER_OF_GROUPS ;;
  }

  dimension: parent_group_id {
    type: number
    sql: ${TABLE}.PARENT_GROUP_ID ;;
  }

  dimension: process_id {
    type: string
    sql: ${TABLE}.PROCESS_ID ;;
  }

  dimension: top_node_ind {
    type: number
    sql: ${TABLE}.TOP_NODE_IND ;;
  }

  measure: count {
    type: count
    drill_fields: [group_name]
  }
}
