.PHONY: generate-docs
generate-docs: ## Generate values documentation from schema
	go install github.com/giantswarm/schemadocs@latest
	schemadocs generate helm/default-apps-aws/values.schema.json -o helm/default-apps-aws/README.md
