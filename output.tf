output "public-ip" {
  value = aws_instance.splunk-instance.public_ip

}
output "vpc_id" {
  value = aws_vpc.splunk-vpc.id
}
output "security_group_id" {
  value = aws_security_group.splunk-sg.id
}






