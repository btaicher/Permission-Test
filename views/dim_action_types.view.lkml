view: dim_action_types {
  sql_table_name: `LP_RAW.DIM_ACTION_TYPES`
    ;;

  dimension: action_type_id {
    type: number
    sql: ${TABLE}.ACTION_TYPE_ID ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.NAME ;;
  }

  measure: count {
    type: count
    drill_fields: [name]
  }
}
