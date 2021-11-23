view: dim_interaction_type {
  sql_table_name: `LP_RAW.DIM_INTERACTION_TYPE`
    ;;

  dimension: channel_id {
    type: number
    sql: ${TABLE}.CHANNEL_ID ;;
  }

  dimension: disable_ind {
    type: number
    sql: ${TABLE}.DISABLE_IND ;;
  }

  dimension: interaction_type_id {
    type: number
    sql: ${TABLE}.INTERACTION_TYPE_ID ;;
  }

  dimension: interaction_type_name {
    type: string
    sql: ${TABLE}.INTERACTION_TYPE_NAME ;;
  }

  measure: count {
    type: count
    drill_fields: [interaction_type_name]
  }
}
