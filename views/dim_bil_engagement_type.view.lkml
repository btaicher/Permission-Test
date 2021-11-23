view: dim_bil_engagement_type {
  sql_table_name: `LP_RAW.DIM_BIL_ENGAGEMENT_TYPE`
    ;;

  dimension: action_type_id {
    type: number
    sql: ${TABLE}.ACTION_TYPE_ID ;;
  }

  dimension: channel_id {
    type: number
    sql: ${TABLE}.CHANNEL_ID ;;
  }

  dimension: engagement_name {
    type: string
    sql: ${TABLE}.ENGAGEMENT_NAME ;;
  }

  measure: count {
    type: count
    drill_fields: [engagement_name]
  }
}
