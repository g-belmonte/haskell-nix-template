* Template for Haskell projects built with Nix

This is a template used for exploring the Haskell ecosystem using Nix.

** Preparing the project

First clone/copy this repository;

- You might want to update the nixpkgs version on the files [`release.nix`](./release.nix) and [`shell.nix`](./shell.nix)

Then initialize a cabal project:

``` sh
nix-shell --pure -p ghc cabal-install --run "cabal init"
```

- In order to have the repl working, update the Makefile, on the `repl` part, putting the name of the project in place of the string `lib-name-here` 

Now you can use the following commands on your terminal:

| Command      | Description                          |
|--------------+--------------------------------------|
| `config`     | Create/regenerate `default.nix` file |
| `build`      | Build project                        |
| `run`        | Execute compiled binary              |
| `repl`       | Enter a REPL with the project loaded |
| `shell`      | Enter a nix shell environment        |
| `shell-pure` | Enter a pure nix shell               |

