view: dim_first_conversation_indicator {
  sql_table_name: `LP_RAW.DIM_FIRST_CONVERSATION_INDICATOR`
    ;;

  dimension: first_conv_ind {
    type: string
    sql: ${TABLE}.FIRST_CONV_IND ;;
  }

  dimension: first_conv_ind_desc {
    type: string
    sql: ${TABLE}.FIRST_CONV_IND_DESC ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
