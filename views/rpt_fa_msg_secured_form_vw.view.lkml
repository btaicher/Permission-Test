view: rpt_fa_msg_secured_form_vw {
  sql_table_name: `LP_RAW.RPT_FA_MSG_SECURED_FORM_VW`
    ;;

  dimension: account_id {
    type: string
    sql: ${TABLE}.ACCOUNT_ID ;;
  }

  dimension: agent_group_id {
    type: number
    sql: ${TABLE}.AGENT_GROUP_ID ;;
  }

  dimension: agent_id {
    type: string
    sql: ${TABLE}.AGENT_ID ;;
  }

  dimension: campaign_id {
    type: number
    sql: ${TABLE}.CAMPAIGN_ID ;;
  }

  dimension: consumer_id {
    type: string
    sql: ${TABLE}.CONSUMER_ID ;;
  }

  dimension: conv_id {
    type: string
    sql: ${TABLE}.CONV_ID ;;
  }

  dimension: conv_skill_id {
    type: number
    sql: ${TABLE}.CONV_SKILL_ID ;;
  }

  dimension_group: conv_start {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.CONV_START_TIME ;;
  }

  dimension: engagement_id {
    type: number
    sql: ${TABLE}.ENGAGEMENT_ID ;;
  }

  dimension_group: event {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.EVENT_TIME ;;
  }

  dimension: form_id {
    type: number
    sql: ${TABLE}.FORM_ID ;;
  }

  dimension: lob_id {
    type: number
    sql: ${TABLE}.LOB_ID ;;
  }

  dimension_group: pci_end {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.PCI_END_TIME ;;
  }

  dimension: pci_sent {
    type: number
    sql: ${TABLE}.PCI_SENT ;;
  }

  dimension_group: pci_start {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.PCI_START_TIME ;;
  }

  dimension: pci_submitted {
    type: number
    sql: ${TABLE}.PCI_SUBMITTED ;;
  }

  dimension: pci_viewed {
    type: number
    sql: ${TABLE}.PCI_VIEWED ;;
  }

  dimension: software_id {
    type: string
    sql: ${TABLE}.SOFTWARE_ID ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
