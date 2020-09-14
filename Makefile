.PHONY: all test clean

build:
	@dune build @install

clean:
	@dune clean

test:
	SIHL_ENV=test dune test

test-slow:
	SIHL_ENV=test dune build @runtest-all --force test
