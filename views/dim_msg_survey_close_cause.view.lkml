view: dim_msg_survey_close_cause {
  sql_table_name: `LP_RAW.DIM_MSG_SURVEY_CLOSE_CAUSE`
    ;;

  dimension: close_cause_id {
    type: number
    sql: ${TABLE}.CLOSE_CAUSE_ID ;;
  }

  dimension: close_cause_name {
    type: string
    sql: ${TABLE}.CLOSE_CAUSE_NAME ;;
  }

  dimension: rpt_close_cause {
    type: string
    sql: ${TABLE}.RPT_CLOSE_CAUSE ;;
  }

  measure: count {
    type: count
    drill_fields: [close_cause_name]
  }
}
