view: dim_msg_roles {
  sql_table_name: `LP_RAW.DIM_MSG_ROLES`
    ;;

  dimension: description {
    type: string
    sql: ${TABLE}.Description ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.Name ;;
  }

  dimension: permission_id {
    type: number
    sql: ${TABLE}.Permission_id ;;
  }

  measure: count {
    type: count
    drill_fields: [name]
  }
}
