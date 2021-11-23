view: dim_engagement_sub_type {
  sql_table_name: `LP_RAW.Dim_Engagement_SubType`
    ;;

  dimension: engagement_subtype_id {
    type: number
    sql: ${TABLE}.Engagement_subtype_id ;;
  }

  dimension: engagement_subtype_name {
    type: string
    sql: ${TABLE}.Engagement_subtype_name ;;
  }

  measure: count {
    type: count
    drill_fields: [engagement_subtype_name]
  }
}
