view: dim_farms {
  sql_table_name: `LP_RAW.DIM_FARMS`
    ;;

  dimension: farm_id {
    type: number
    sql: ${TABLE}.FARM_ID ;;
  }

  dimension: is_local_ind {
    type: number
    sql: ${TABLE}.IS_LOCAL_IND ;;
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
