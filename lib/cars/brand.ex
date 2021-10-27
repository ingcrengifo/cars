defmodule Cars.Brand do
  use Ecto.Schema

  schema "brand" do
    field(:description, :string)
    timestamps(type: :utc_datetime)
  end
end
