.PHONY: all build push

all: build push

build:
	@docker build --no-cache --pull -t praseodym/arm32v7-debian-oracle-java:latest -t praseodym/arm32v7-debian-oracle-java:jessie .

push:
	@docker push praseodym/arm32v7-debian-oracle-java:latest
	@docker push praseodym/arm32v7-debian-oracle-java:jessie
