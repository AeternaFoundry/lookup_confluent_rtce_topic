data "confluent_rtce_topic" "rtce_topic_lookup" {
  for_each = var.rtce_topic_lookup

  topic_name = each.value.topic_name

  environment {
    id = each.value.environment.id
  }

  kafka_cluster {
    id = each.value.kafka_cluster.id
  }
}

