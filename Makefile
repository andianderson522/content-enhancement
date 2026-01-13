.PHONY: print_banner build
.SILENT:
default: all

all: clean build test

build:
	$(MAKE) print_banner MSG="Building..."
	@echo NO-OP

clean:
	$(MAKE) print_banner MSG="Cleaning Project"
	@echo NO-OP

deploy:
	$(MAKE) print_banner MSG="Running Deploy"
	@echo NO-OP

print_banner: 
	@bash ./scripts/notify.sh ${MSG} 

startContainers: build
	# TODO: separate into services, backends, and module containers
	@docker-compose up -d

stopContainers:
	@docker-compose down --remove-orphans

test:
	$(MAKE) print_banner MSG="Testing Project"
	@echo NO-OP
