config:
	nix-shell --pure -p cabal2nix --run "cabal2nix ." > default.nix

build:
	nix-build release.nix

run: build
	result/bin/lib-name-here

repl:
	nix-shell -pure shell.nix --run "cabal repl lib:lib-name-here"

shell:
	nix-shell shell.nix

shell-pure:
	nix-shell --pure shell.nix

.PHONY: config build run repl shell shell-pure
