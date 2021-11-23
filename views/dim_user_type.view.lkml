view: dim_user_type {
  sql_table_name: `LP_RAW.DIM_USER_TYPE`
    ;;

  dimension: user_type_id {
    type: number
    sql: ${TABLE}.USER_TYPE_ID ;;
  }

  dimension: user_type_name {
    type: string
    sql: ${TABLE}.USER_TYPE_NAME ;;
  }

  measure: count {
    type: count
    drill_fields: [user_type_name]
  }
}
