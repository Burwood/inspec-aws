output "aws_account_id" {
  value = "${data.aws_caller_identity.creds.account_id}"
}

output "aws_vpc_id" {
  value = "${aws_vpc.inspec_vpc.*.id}"
}

output "aws_default_vpc_id" {
  value = "${data.aws_vpc.default.id}"
}

output "aws_instance_id" {
  value = "${aws_instance.linux_ubuntu_vm.*.id}"
}

output "aws_ec2_ami_id" {
  value = "${data.aws_ami.linux_ubuntu.id}"
}

output "aws_vpc_dhcp_options_id" {
  value = "${aws_vpc.inspec_vpc.*.dhcp_options_id}"
}

output "aws_subnet_id" {
  value = "${aws_subnet.inspec_subnet.*.id}"
}

output "aws_subnet_cidr_block" {
  value = "${aws_subnet.inspec_subnet.*.cidr_block}"
}

output "aws_ebs_volume_arn" {
  value = "${aws_ebs_volume.inspec_ebs_volume.*.arn}"
}

output "aws_ebs_volume_id" {
  value = "${aws_ebs_volume.inspec_ebs_volume.*.id}"
}

output "aws_kms_key_enabled_id" {
  value = "${aws_kms_key.kms_key_enabled_rotating.*.key_id}"
}

output "aws_kms_key_disabled_id" {
  value = "${aws_kms_key.kms_key_disabled_non_rotating.*.key_id}"
}

output "aws_kms_key_enabled_arn" {
  value = "${aws_kms_key.kms_key_enabled_rotating.*.arn}"
}

output "aws_kms_key_disabled_arn" {
  value = "${aws_kms_key.kms_key_disabled_non_rotating.*.arn}"
}

output "aws_route_table_first_id" {
  value = "${aws_route_table.route_table_first.*.id}"
}

output "aws_route_table_second_id" {
  value = "${aws_route_table.route_table_second.*.id}"
}

output "aws_s3_bucket_public_region" {
  value = "${aws_s3_bucket.bucket_public.*.region}"
}

output "aws_s3_bucket_object_public" {
  value = "${aws_s3_bucket_object.inspec_logo_public.*.id}"
}

output "aws_s3_bucket_object_private" {
  value = "${aws_s3_bucket_object.inspec_logo_private.*.id}"
}

output "aws_sns_subscription_arn" {
  value = "${aws_sns_topic_subscription.sqs_test_queue_subscription.*.arn}"
}

output "aws_sns_topic_with_subscription_arn" {
  value = "${aws_sns_topic.sns_topic_subscription.*.arn}"
}

output "aws_sns_topic_no_subscription_arn" {
  value = "${aws_sns_topic.sns_topic_no_subscription.*.arn}"
}

output "sns_sqs_queue_arn" {
value = "${aws_sqs_queue.sns_sqs_queue.*.arn}"
}