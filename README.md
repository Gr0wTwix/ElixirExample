# Fluffy Tribble

Fluffy Tribble tests a set of basic skills in the field of backend engineering with Elixir.

## Usage

### Requirements

You must have the following installed on your system in order to run this project.

* [Elixir](https://elixir-lang.org/install.html)/[Erlang](https://www.erlang.org/downloads)

### Getting started

To start your Phoenix server:

  * Run `mix setup` to install and setup dependencies
  * Start Phoenix endpoint with `mix phx.server` or inside IEx with `iex -S mix phx.server`

Now you can visit [`localhost:4000`](http://localhost:4000) from your browser.

## Tasks

Below is a list of tasks to be done. Keep the following in mind:

1. Try to reuse as much as possible.
2. Check the examples on how the functions should work.

### Bugs

1. There is a compilation error when trying to start the application with `mix phx.server`, this should be fixed in order to proceed.
2. Run `mix credo` and fix the given issues.

### Features

1. Complete the function `list_users/1` in `lib/fluffy_tribble/accounts.ex:36`.
2. Complete the function `get_user/1` in `lib/fluffy_tribble/accounts.ex:59`.
3. Ensure that the route `/api/users/:id` works properly (should work with id and not name and the JSON should print the first and lastname seperated using the name as source).
4. Complete the function `is_user?/1` in `lib/fluffy_tribble/accounts.ex`.
5. Expand the function `changeset/2` in `lib/fluffy_tribble/accounts/user.ex:32`.

## Learn more

  * Official website: https://www.phoenixframework.org/
  * Guides: https://hexdocs.pm/phoenix/overview.html
  * Docs: https://hexdocs.pm/phoenix
  * Forum: https://elixirforum.com/c/phoenix-forum
  * Source: https://github.com/phoenixframework/phoenix
