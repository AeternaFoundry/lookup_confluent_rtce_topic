variable "rtce_topic_lookup" {
  description = <<EOT
Map of rtce_topic_lookup, attributes below
Required:
    - topic_name
    - environment (block):
        - id (required)
    - kafka_cluster (block):
        - id (required)
EOT

  type = map(object({
    topic_name = string
    environment = object({
      id = string
    })
    kafka_cluster = object({
      id = string
    })
  }))
}

