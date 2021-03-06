terraform {
  backend "s3" {}
}

provider "aws" {
  region  = "us-west-2"
  profile = "terraform"
}

resource "aws_ecs_task_definition" "service" {
  family                = "service"
  container_definitions = "${file("../task-definitions/service.json")}"

  
}
