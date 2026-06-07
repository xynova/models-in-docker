group "default" {
  targets = ["model"]
}

target "model" {
  dockerfile = "Dockerfile"
  platforms = ["linux/amd64"]
  tags = [
    "docker.io/xynova/bge-base-model:latest",
    "docker.io/xynova/bge-base-model:bge-base-en-v1.5"
  ]
  context = "."
  output = ["type=registry"]
}
