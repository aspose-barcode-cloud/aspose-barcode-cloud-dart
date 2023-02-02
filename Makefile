.PHONY:	all
all:	test	lint

.PHONY:	lint
lint:
	dart analyze lib example

.PHONY:	test
test:
	dart test --chain-stack-traces
	dart example/main.dart

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
after-gen: fix
	dart format . > /dev/null

.PHONY: update
update:
	dart pub upgrade

.PHONY: cover
cover:
	# Install coverage with: dart pub global activate coverage
	dart pub global run coverage:test_with_coverage
	# Install lcov with `brew install lcov` or `apt-get install lcov`
	genhtml coverage/lcov.info -o coverage/html
