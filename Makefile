
start:
	@docker build -t railsapp:latest --cache-from railsapp:latest  .
	@docker container run -p 3000:3000 railsapp:latest     