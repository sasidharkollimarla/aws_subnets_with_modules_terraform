module "subnet" {
  source = "./modules/"


vpc_id = "${var.vpc_id}"
aws_region = "${var.aws_region}"

}
