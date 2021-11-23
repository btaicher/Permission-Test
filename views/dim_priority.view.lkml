view: dim_priority {
  sql_table_name: `LP_RAW.DIM_PRIORITY`
    ;;

  dimension: action_type_id {
    type: number
    sql: ${TABLE}.ACTION_TYPE_ID ;;
  }

  dimension: channel_id {
    type: number
    sql: ${TABLE}.CHANNEL_ID ;;
  }

  dimension: post_engagement_ind {
    type: number
    sql: ${TABLE}.POST_ENGAGEMENT_IND ;;
  }

  dimension: priority {
    type: number
    sql: ${TABLE}.PRIORITY ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
