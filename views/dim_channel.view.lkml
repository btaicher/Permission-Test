view: dim_channel {
  sql_table_name: `LP_RAW.DIM_CHANNEL`
    ;;

  dimension: channel_id {
    type: number
    sql: ${TABLE}.CHANNEL_ID ;;
  }

  dimension: channel_name {
    type: string
    sql: ${TABLE}.CHANNEL_NAME ;;
  }

  dimension: disable_ind {
    type: number
    sql: ${TABLE}.DISABLE_IND ;;
  }

  measure: count {
    type: count
    drill_fields: [channel_name]
  }
}
