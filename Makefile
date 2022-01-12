.PHONY:	all
all:	test	lint

.PHONY:	lint
lint:
	dart analyze

.PHONY:	test
test:
	dart test --chain-stack-traces

.PHONY: publish
publish:
	dart pub publish --dry-run
