view: dim_engagement_type {
  sql_table_name: `LP_RAW.Dim_Engagement_Type`
    ;;

  dimension: engagement_type_id {
    type: number
    sql: ${TABLE}.Engagement_type_id ;;
  }

  dimension: engagement_type_name {
    type: string
    sql: ${TABLE}.Engagement_type_name ;;
  }

  measure: count {
    type: count
    drill_fields: [engagement_type_name]
  }
}
