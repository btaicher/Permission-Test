view: dim_visitor_behavior {
  sql_table_name: `LP_RAW.DIM_VISITOR_BEHAVIOR`
    ;;

  dimension: account_id {
    type: string
    sql: ${TABLE}.ACCOUNT_ID ;;
  }

  dimension: deleted_ind {
    type: number
    sql: ${TABLE}.DELETED_IND ;;
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

  dimension: visitor_behavior_desc {
    type: string
    sql: ${TABLE}.VISITOR_BEHAVIOR_DESC ;;
  }

  dimension: visitor_behavior_id {
    type: number
    sql: ${TABLE}.VISITOR_BEHAVIOR_ID ;;
  }

  dimension: visitor_behavior_name {
    type: string
    sql: ${TABLE}.VISITOR_BEHAVIOR_NAME ;;
  }

  measure: count {
    type: count
    drill_fields: [visitor_behavior_name]
  }
}
