view: dim_bil_uom {
  sql_table_name: `LP_RAW.DIM_BIL_UOM`
    ;;

  dimension: name {
    type: string
    sql: ${TABLE}.NAME ;;
  }

  dimension: uom_id {
    type: number
    sql: ${TABLE}.UOM_ID ;;
  }

  measure: count {
    type: count
    drill_fields: [name]
  }
}
