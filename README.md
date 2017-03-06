
## PostgreSQL DB

Starting from an empty Posgres docker image and init the database with schema.

#### How to run locally

	./start-docker-compose.sh
	
#### How to update image

	docker build -t tdlimpo-postgres .
	docker tag tdlimpo-postgres federicofiorini/tdlimpo-postgres
	docker push federicofiorini/tdlimpo-postgres
	
