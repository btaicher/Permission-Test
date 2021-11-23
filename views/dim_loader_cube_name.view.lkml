view: dim_loader_cube_name {
  sql_table_name: `LP_RAW.DIM_LOADER_CUBE_NAME`
    ;;

  dimension: cube_cache_name {
    type: string
    sql: ${TABLE}.CUBE_CACHE_NAME ;;
  }

  dimension: cube_id {
    type: string
    sql: ${TABLE}.CUBE_ID ;;
  }

  dimension: cube_name {
    type: string
    sql: ${TABLE}.CUBE_NAME ;;
  }

  dimension: delete_run_ind {
    type: number
    sql: ${TABLE}.DELETE_RUN_IND ;;
  }

  dimension: fact_key_delete_column {
    type: string
    sql: ${TABLE}.FACT_KEY_DELETE_COLUMN ;;
  }

  dimension: fact_table {
    type: string
    sql: ${TABLE}.FACT_TABLE ;;
  }

  dimension: iserver_vip_name {
    type: string
    sql: ${TABLE}.ISERVER_VIP_NAME ;;
  }

  dimension: mstr_attribute {
    type: string
    sql: ${TABLE}.MSTR_ATTRIBUTE ;;
  }

  measure: count {
    type: count
    drill_fields: [cube_name, iserver_vip_name, cube_cache_name]
  }
}
