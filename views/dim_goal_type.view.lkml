view: dim_goal_type {
  sql_table_name: `LP_RAW.DIM_GOAL_TYPE`
    ;;

  dimension: business_goal_ind {
    type: number
    sql: ${TABLE}.BUSINESS_GOAL_IND ;;
  }

  dimension: disable_ind {
    type: number
    sql: ${TABLE}.DISABLE_IND ;;
  }

  dimension: goal_type_category {
    type: string
    sql: ${TABLE}.GOAL_TYPE_CATEGORY ;;
  }

  dimension: goal_type_id {
    type: number
    sql: ${TABLE}.GOAL_TYPE_ID ;;
  }

  dimension: goal_type_name {
    type: string
    sql: ${TABLE}.GOAL_TYPE_NAME ;;
  }

  dimension: is_purchase_goal_type {
    type: number
    sql: ${TABLE}.IS_PURCHASE_GOAL_TYPE ;;
  }

  measure: count {
    type: count
    drill_fields: [goal_type_name]
  }
}
