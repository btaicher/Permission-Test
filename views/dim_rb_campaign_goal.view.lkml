view: dim_rb_campaign_goal {
  sql_table_name: `LP_RAW.DIM_RB_CAMPAIGN_GOAL`
    ;;

  dimension: is_campaign_goal_match {
    type: string
    sql: ${TABLE}.IS_CAMPAIGN_GOAL_MATCH ;;
  }

  dimension: is_campaign_goal_match_id {
    type: number
    sql: ${TABLE}.IS_CAMPAIGN_GOAL_MATCH_ID ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
