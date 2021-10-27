defmodule Cars.Car do
  use Ecto.Schema

  schema "car" do
    field(:brand_id, :integer)
    field(:name, :string)
    field(:model, :integer)
    field(:owner, :string)
    timestamps(type: :utc_datetime)
  end

  def changeset(car, params \\ %{}) do
    car
    |> Ecto.Changeset.cast(params, [:name, :model, :owner, :brand_id])
    |> Ecto.Changeset.validate_required([:name, :model, :brand_id])
  end
end
