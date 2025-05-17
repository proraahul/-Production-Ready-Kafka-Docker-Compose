#!/bin/bash

BROKER=localhost:9092

echo "Checking Kafka brokers health..."
docker exec -it broker1 kafka-broker-api-versions.sh --bootstrap-server $BROKER && echo "Kafka is reachable." || echo "Kafka is unreachable."
