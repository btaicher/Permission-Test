connection: "lp-bird-new_sandbox-bigquery"

# include all the views
include: "/views/**/*.view"

datagroup: permissions_test_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: permissions_test_default_datagroup

explore: rpt_agg_msg_conv_agent_vw {
  view_label: "Agent Activity"
  join: dim_agent {
    type: left_outer
    relationship: many_to_one
    sql_on: ${rpt_agg_msg_conv_agent_vw.account_id}=${dim_agent.account_id}
    and ${rpt_agg_msg_conv_agent_vw.agent_id}=${dim_agent.agent_id};;
  }
  join: dim_skill {
    type: left_outer
    relationship: many_to_one
    sql_on: (${rpt_agg_msg_conv_agent_vw.account_id} = ${dim_skill.account_id}
      and ${rpt_agg_msg_conv_agent_vw.conv_skill_id}= ${dim_skill.skill_id});;
  }
}
