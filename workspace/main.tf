resource "aws_ecs_task_definition" "service" {
  family                = "service"
  container_definitions = "${file("../task-definitions/service.json")}"

  
}
