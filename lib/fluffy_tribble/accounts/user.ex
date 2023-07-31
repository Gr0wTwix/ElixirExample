defmodule FluffyTribble.Accounts.User do
  @moduledoc false
  use Ecto.Schema
  import Ecto.Changeset

  schema "users" do
    field :name, :string
    field :age, :integer
  end

  @doc """
  This function accepts a User struct and params.
  The given parameters are validated against a set of rules.
  Complete the rules listed below

  Validation:
    - Name is required
    - Age is required
    - Name should have a minimum length of 2 characters and maximum 100 characters
    - Age should be between 0..100

  ## Examples

      iex> changeset(%User{}, %{name: "Spock", age: 30})
      %Ecto.Changeset{valid?: true, ..}

      iex> changeset(%User{}, %{name: "Spock", age: 101})
      %Ecto.Changeset{valid?: false, ..}

  """

  defmodule User do
    defstruct resource: nil, reference: nil
  end

  def changeset(%User{} = user, params) do
    user
    |> cast(params, [:name])
    |> validate_required(:name)
    |> validate_length(:name, min: 2, max: 100)
    |> validate_length(:age, min: 0, max: 100)
  end
end
