# Elixir-C-Interop

**Example project for interoperability options demonstration**

## Prerequisites

### A C/C++ compiler

This project makes no assumptions about the c/c++ compiler except is should be callable by `cc`.

### Elixir / Erlang runtime

* For a basic install use the official guide at https://elixir-lang.org/install.html.

* Dockerized setup is possible but is not provided for. Use one of the Elixir images https://hub.docker.com/_/elixir. This project currenly depends on Elixir 1.16.x. 

* For a version-managed setup using asdf follow the steps below.

---

1. Install asdf: https://asdf-vm.com/guide/getting-started.html

2. Update the asdf's internal data:

```
asdf update
```

3. Enable the asdf's Elixir plugin:

```
asdf plugin add elixir
```

4. Install Elixir / Erlang:

```
asdf install elixir 1.16.2-otp-26
```

### Project dependencies

From the project root directory run:

```
mix deps.get
```

## Running the examples

From the project root directory run:

```
mix test
```

This should compile the C code using the provided `Makefile`, compile the Elixir code, and run the test examples found under the `apps/` directory.

If compiling the C code manually, make sure to provide the `ERTS_INCLUDE_DIR` env var, pointing to the Erlang's ERTS include directory. An example path may look like this:

```
/<home>/<user>/.asdf/installs/erlang/26.2.1/erts-14.2.1/include
```