.PHONY:	all
all:	test	lint

.PHONY: init
init:
	dart pub get

.PHONY:	lint
lint:
	dart analyze lib example

.PHONY:	test
test:
	dart test --chain-stack-traces
	dart example/main.dart

.PHONY: format
format:
	dart format .

.PHONY: fix
fix:
	dart fix --apply

.PHONY: after-gen
after-gen: fix
	./scripts/annotate-deprecated.bash
	dart format . > /dev/null

.PHONY: update
update:
	dart pub upgrade

.PHONY: cover
cover:
	## Activate package `coverage` (if needed):
	# dart pub global activate coverage

	# Run Dart tests and output them at directory `./coverage`:
	dart pub global run coverage:test_with_coverage

	# Generate HTML from LCOV report:
	# Install lcov with `brew install lcov` or `apt-get install lcov`
	genhtml ./coverage/lcov.info -o ./coverage/html

	# Open the HTML coverage report:
	ls ./coverage/report/index.html
