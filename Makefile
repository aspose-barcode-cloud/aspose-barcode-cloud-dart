.PHONY:	all
all:	test	lint

.PHONY:	lint
lint:
	dart analyze lib

.PHONY:	test
test:
	dart test --chain-stack-traces

.PHONY: publish
publish:
	dart pub publish --dry-run

.PHONY: format
format:
	dart format .

.PHONY: fix
fix:
	dart fix --apply

.PHONY: after-gen
after-gen: format
