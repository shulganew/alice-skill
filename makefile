#psql -h localhost  -p 5436 -U videos -d videos
.PHONY: pg

pg: 
	docker run --rm\
		--name=alice_v1 \
		-v $(abspath ./docker/init/):/docker-entrypoint-initdb.d \
		-e POSTGRES_PASSWORD="postgres" \
		-d \
		-p 5436:5432 \
		postgres:15.3


.PHONY: pg-stop
pg-stop:
	docker stop alice_v1