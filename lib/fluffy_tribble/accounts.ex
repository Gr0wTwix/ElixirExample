defmodule FluffyTribble.Accounts do
  @moduledoc """
  The Accounts context.
  """

  import Ecto.Query, warn: false
  alias FluffyTribble.Accounts.User
  alias FluffyTribble.Repo

  # @spock %User{id: 1, name: "Spock", age: 40}
  # @kirk %User{id: 2, name: "James Kirk", age: 45}
  # @christine %User{id: 3, name: "Christine Chapel", age: 30}

  @doc """
  Returns the list of users.

  ## Examples

      iex> list_users()
      [%User{}, ...]

  """
  def list_users do
    Repo.all(User)
  end

  @doc """
  Return the list of users using a sort by filter upon given field.

  ## Examples

      iex> list_users(age: :asc)
      [%User{}, ...]

      iex> list_users(name: :desc)
      [%User{}, ...]

  """
  def list_users(params) do
     # Enum.find(list_users(), fn user ->
    #   Enum.all?(params, fn {key, value} -> Map.get(user, key) == value end)
    # end)
    Repo.get_by(User, params)
  end

  @doc """
  Return the user based on its name or id.

  When the user doesn't exists, return nil.

  Tip: this is a very naive approach that can be handled with guards

  ## Examples

      iex> get_user("Spock")
      %User{}

      iex> get_user(1)
      %User{}

      iex> get_user(5)
      nil

  """
  def get_user(id) do
    # Enum.find(list_users(), fn user -> user.id == id end)
    Repo.get!(User, id)
  end


  def get_user!(id) do
    Repo.get!(User, id)
  end


  def create_user(attrs \\%{}) do
    # %User{}
    %User{}
    |> User.changeset(attrs)
    |> Repo.insert()
  end

  @doc """
  Check if the given parameter is a User struct.

  ## Examples

      iex> is_user?(%User{})
      true

      iex> is_user?(%{})
      false

  """
  def is_user?(%User{}), do: true

  @doc """
  Check if the given user is older then.

  Ensure the result from the example keeps the same.

  Bonus: use guards

  ## Examples

      iex> is_older?(%User{age: 30}, %User{age: 20})
      true

  """
  def is_older?(%User{age: age_left}, %User{age: age_right}) do
    unless age_left <= age_right do
      true
    else
      false
    end
  end

  @doc """
  Convert a map to a user struct.

  ## Examples

      iex> convert_to_user_struct(%{name: "Spock"})
      %User{}

  """

  # def to_map(nil) do
  #   nil
  # end

  # def to_map(list, options) when is_list(list) do
  #   list
  #   |> Enum.into(%{}, fn {key, val} -> {convert_key(key, options[:keys]), val} end)
  # end

  # def to_map(%_module{} = struct, options) do
  #   Map.from_struct(struct) |> convert_keys(options[:keys], options[:shallow] || false)
  # end

  # def to_map(map, options) when is_map(map) do
  #   map |> convert_keys(options[:keys], options[:shallow] || false)
  # end

  # def to_struct(nil, _module) do
  #   nil
  # end


  # def convert_to_user_struct(params) do
  #   params
  #   |> is_map()
  #   |> if do
  #     struct(User, params)
  #   else
  #     nil
  #   end
  # end


  def to_struct(map, module) when is_atom(module) and is_map(map) do
    map = to_map(map, keys: :strings, shallow: true)
    userStruct = userStruct(module)

    Enum.reduce(Map.to_list(struct), struct, fn {k, _}, acc ->
      case Map.fetch(map, convert_key(k, :strings)) do
        {:ok, v} -> %{acc | k => v}
        :error -> acc
      end
    end)
  end

end
