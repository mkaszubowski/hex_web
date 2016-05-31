defmodule HexWeb.PackageMetadata do
  use HexWeb.Web, :model

  embedded_schema do
    field :description, :string
    field :licenses, {:array, :string}
    field :links, :map
    field :maintainers, {:array, :string}
    field :extra, :map
  end

  def changeset(meta, params \\ %{}) do
    cast(meta, params, ~w(description licenses links maintainers extra))
    |> validate_required(:description)
    |> validate_required(:licenses)
  end
end
