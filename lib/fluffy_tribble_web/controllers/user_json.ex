defmodule FluffyTribbleWeb.UserJSON do
  alias FluffyTribble.Accounts.User

  @doc """
  Renders a list of users.
  """
  def index(%{users: users}) do
    %{data: for(user <- users, do: data(user))}
  end

  @doc """
  Renders a single user.
  """
  def show(%{user: user}) do
    %{data: data(user)}
  end

  defp data(%User{} = user) do
    # Split the `user.name` into first and last name.
    # Make sure the given users work properly.
    # Also, is this the best place to do so?
    %{
      id: user.id,
      firstname: "TODO",
      lastname: "TODO",
      age: user.age
    }
  end
end
