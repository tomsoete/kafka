#!/bin/bash
docker run --rm -it --net=host confluentinc/cp-schema-registry:3.3.0 bash

kafka-avro-console-producer \
  --broker-list localhost:9092 \
  --topic test-avro \
  --property schema.registry.url=http://127.0.0.1:8081 \
  --property value.schema='{"type":"record", "name":"MyRecord", "fields":[{"type":"string", "name":"f1"}]}'

{"f1":"testvalue"}

kafka-avro-console-consumer \
  --bootstrap-server localhost:9092 \
  --topic test-avro \
  --property schema.registry.url=http://127.0.0.1:8081 \
  --from-beginning
