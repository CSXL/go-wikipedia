generate:
	@echo "Generating..."
	@java -jar swagger-codegen-cli.jar generate -i wikipedia-openapi-spec.json --git-repo-id go-wikipedia --git-user-id CSXL -l go
	@echo "Done."
