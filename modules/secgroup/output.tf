output "secgroup_name" {
  value = openstack_networking_secgroup_v2.secgroup.name
}

output "secgroup_rules" {
  value = concat([openstack_networking_secgroup_rule_v2.default_rule, openstack_networking_secgroup_rule_v2.tunnel_rule], openstack_networking_secgroup_rule_v2.rules)
}
