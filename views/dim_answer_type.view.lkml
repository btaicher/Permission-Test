view: dim_answer_type {
  sql_table_name: `LP_RAW.DIM_ANSWER_TYPE`
    ;;

  dimension: answer_type_id {
    type: number
    sql: ${TABLE}.ANSWER_TYPE_ID ;;
  }

  dimension: answer_type_name {
    type: string
    sql: ${TABLE}.ANSWER_TYPE_NAME ;;
  }

  dimension: multi_answer_ind {
    type: number
    sql: ${TABLE}.MULTI_ANSWER_IND ;;
  }

  measure: count {
    type: count
    drill_fields: [answer_type_name]
  }
}
