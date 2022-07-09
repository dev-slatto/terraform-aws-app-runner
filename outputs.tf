################################################################################
# Service
################################################################################


################################################################################
# VPC Connector
################################################################################

output "vpc_connector_arn" {
  description = "The Amazon Resource Name (ARN) of VPC connector"
  value       = try(aws_apprunner_vpc_connector.this[0].arn, null)
}

output "vpc_connector_status" {
  description = "The current state of the VPC connector. If the status of a connector revision is INACTIVE, it was deleted and can't be used. Inactive connector revisions are permanently removed some time after they are deleted"
  value       = try(aws_apprunner_vpc_connector.this[0].status, null)
}

output "vpc_connector_revision" {
  description = "The revision of VPC connector. It's unique among all the active connectors (\"Status\": \"ACTIVE\") that share the same Name"
  value       = try(aws_apprunner_vpc_connector.this[0].vpc_connector_revision, null)
}

################################################################################
# Connection
################################################################################

output "connection_arn" {
  description = "The Amazon Resource Name (ARN) of the connection"
  value       = try(aws_apprunner_connection.this[0].arn, null)
}

output "connection_status" {
  description = "The current state of the App Runner connection. When the state is `AVAILABLE`, you can use the connection to create an aws_apprunner_service resource"
  value       = try(aws_apprunner_connection.this[0].status, null)
}

################################################################################
# Autoscaling
################################################################################

output "autoscaling_configuration_arn" {
  description = "ARN of this auto scaling configuration version"
  value       = try(aws_apprunner_auto_scaling_configuration_version.this[0].arn, null)
}

output "autoscaling_configuration_revision" {
  description = "The revision of this auto scaling configuration"
  value       = try(aws_apprunner_auto_scaling_configuration_version.this[0].auto_scaling_configuration_revision, null)
}

output "autoscaling_configuration_latest" {
  description = "Whether the auto scaling configuration has the highest `auto_scaling_configuration_revision` among all configurations that share the same `auto_scaling_configuration_name`"
  value       = try(aws_apprunner_auto_scaling_configuration_version.this[0].latest, null)
}

output "autoscaling_configuration_status" {
  description = "The current state of the auto scaling configuration. An INACTIVE configuration revision has been deleted and can't be used. It is permanently removed some time after deletion"
  value       = try(aws_apprunner_auto_scaling_configuration_version.this[0].status, null)
}

################################################################################
# Custom Domain Association
################################################################################

output "custom_domain_association_id" {
  description = "The `domain_name` and `service_arn` separated by a comma (`,`)"
  value       = try(aws_apprunner_custom_domain_association.this[0].id, null)
}

output "custom_domain_association_certificate_validation_records" {
  description = "A set of certificate CNAME records used for this domain name"
  value       = try(aws_apprunner_custom_domain_association.this[0].certificate_validation_records, null)
}

output "custom_domain_association_dns_target" {
  description = "The App Runner subdomain of the App Runner service. The custom domain name is mapped to this target name. Attribute only available if resource created (not imported) with Terraform"
  value       = try(aws_apprunner_custom_domain_association.this[0].dns_target, null)
}

################################################################################
# Observability Configuration
################################################################################

output "observability_configuration_arn" {
  description = "ARN of this observability configuration"
  value       = try(aws_apprunner_observability_configuration.this[0].arn, null)
}

output "observability_configuration_revision" {
  description = "The revision of the observability configuration"
  value       = try(aws_apprunner_observability_configuration.this[0].observability_configuration_revision, null)
}

output "observability_configuration_latest" {
  description = "Whether the observability configuration has the highest `observability_configuration_revision` among all configurations that share the same `observability_configuration_name`"
  value       = try(aws_apprunner_observability_configuration.this[0].latest, null)
}

output "observability_configuration_status" {
  description = "The current state of the observability configuration. An INACTIVE configuration revision has been deleted and can't be used. It is permanently removed some time after deletion"
  value       = try(aws_apprunner_observability_configuration.this[0].status, null)
}
