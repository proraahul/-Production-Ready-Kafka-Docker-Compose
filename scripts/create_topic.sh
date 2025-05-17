#!/bin/bash
BROKER=localhost:9092
TOPIC_NAME=$1
PARTITIONS=${2:-3}
REPLICATION_FACTOR=${3:-2}

if [ -z "$TOPIC_NAME" ]; then
  echo "Usage: $0 <topic_name> [partitions] [replication_factor]"
  exit 1
fi

docker exec -it broker1 kafka-topics.sh --create \
  --topic $TOPIC_NAME \
  --partitions $PARTITIONS \
  --replication-factor $REPLICATION_FACTOR \
  --bootstrap-server $BROKER

echo "Topic '$TOPIC_NAME' created with $PARTITIONS partitions and replication factor $REPLICATION_FACTOR."
