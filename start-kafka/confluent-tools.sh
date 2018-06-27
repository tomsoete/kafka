# We starten een bash sessie in een docker image met de schema-registry om toegang te hebben tot de binaries van de confluent tools: 
docker run -it --rm --net=host confluentinc/cp-schema-registry:3.3.1 bash

# Daarna kunnen we consumen 
# kafka-avro-console-consumer

# of producen
kafka-avro-console-producer
