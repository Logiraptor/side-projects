defmodule FlowMvp.App do
  use FlowMvp.Web, :model

  schema "apps" do
    field :name, :string
    field :desc, :string

    timestamps()
  end

  @doc """
  Builds a changeset based on the `struct` and `params`.
  """
  def changeset(struct, params \\ %{}) do
    struct
    |> cast(params, [:name, :desc])
    |> validate_required([:name, :desc])
  end
end
