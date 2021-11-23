view: dim_market_channel {
  sql_table_name: `LP_RAW.DIM_MARKET_CHANNEL`
    ;;

  dimension: market_channel {
    type: string
    sql: ${TABLE}.MARKET_CHANNEL ;;
  }

  dimension: market_channel_id {
    type: number
    sql: ${TABLE}.MARKET_CHANNEL_ID ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
