view: dim_browser {
  sql_table_name: `LP_RAW.DIM_BROWSER`
    ;;

  dimension: browser_id {
    type: number
    sql: ${TABLE}.BROWSER_ID ;;
  }

  dimension: browser_name {
    type: string
    sql: ${TABLE}.BROWSER_NAME ;;
  }

  dimension: rpt_browser_name {
    type: string
    sql: ${TABLE}.RPT_BROWSER_NAME ;;
  }

  measure: count {
    type: count
    drill_fields: [browser_name, rpt_browser_name]
  }
}
