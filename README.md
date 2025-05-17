# Kafka Production Deployment

## Overview
This repo contains a secure, production-grade Kafka cluster using KRaft mode with:
- 3 Kafka controllers
- 3 Kafka brokers with TLS & SASL authentication
- Kafka UI for cluster management
- Kafka Connect for integrations
- Schema Registry for Avro support
- Prometheus + Grafana monitoring

## Folder Structure
- `certs/` - TLS certificates
- `prometheus/` - Prometheus config and TLS certs
- `dashboards/` - Grafana dashboards JSON files
- `scripts/` - Helper scripts for Kafka management
- `docker-compose.yml` - Main Docker Compose setup

## Setup Instructions

1. Place your TLS certificates (`ca.crt`, `server.crt`, `server.key`) into the `certs/` directory.
2. Copy or symlink these certs into `prometheus/certs/`.
3. Update any hostnames/IPs in `docker-compose.yml` and Prometheus config if needed.
4. Start services:
   ```bash
   docker-compose up -d



   chmod +x scripts/create_topic.sh

   chmod +x scripts/health_check.sh

KAFKA PPT  

https://www.canva.com/design/DAGPEHV8EnI/Yi2j5yeQ6EDsJmS7iAbnwA/edit?continue_in_browser=true
