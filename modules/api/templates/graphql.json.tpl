[
  {
    "name": "sangria-graphql",
    "image": "${app_image}",
    "cpu": 0,
    "secrets": [
      {
        "valueFrom": "${url_path}",
        "name": "DB_URL"
      },
      {
        "valueFrom": "${username_path}",
        "name": "DB_USERNAME"
      },
      {
        "valueFrom": "${password_path}",
        "name": "DB_PASSWORD"
      }
    ],
    "networkMode": "awsvpc",
    "logConfiguration": {
      "logDriver": "awslogs",
      "options": {
        "awslogs-group": "/ecs/tdr-graphql-${app_environment}",
        "awslogs-region": "${aws_region}",
        "awslogs-stream-prefix": "ecs"
      }
    },
    "portMappings": [
      {
        "containerPort": ${app_port},
      "hostPort": ${app_port}
    }
    ]
  }
]