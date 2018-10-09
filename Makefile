GOFMT ?= gofmt "-s"
PACKAGES ?= $(shell go list ./...)
VETPACKAGES ?= $(shell go list ./...)
GOFILES := $(shell find . -name "*.go" -type f)

.PHONY: test
test:
	sh coverage.sh

.PHONY: fmt
fmt:
	$(GOFMT) -w $(GOFILES)

.PHONY: fmt-check
fmt-check:
	@diff=$$($(GOFMT) -d $(GOFILES)); \
	if [ -n "$$diff" ]; then \
		echo "Please run 'make fmt' and commit the result:"; \
		echo "$${diff}"; \
		exit 1; \
	fi;

.PHONY: vet
vet:
	go vet $(VETPACKAGES)

.PHONY: embedmd
embedmd:
	embedmd -d *.md

.PHONY: lint
lint:
	for PKG in $(PACKAGES); do golint -set_exit_status $$PKG || exit 1; done;

.PHONY: misspell-check
misspell-check:
	misspell -error $(GOFILES)

.PHONY: misspell
misspell:
	misspell -w $(GOFILES)

.PHONY: tools
tools:
	go install github.com/golang/lint/golint; \
	go install github.com/client9/misspell/cmd/misspell; \
	go install github.com/campoy/embedmd;
