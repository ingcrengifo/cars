defmodule Cars.Repo.Migrations.Car do
  use Ecto.Migration

  def change do
    create table(:car) do
      add(:brand_id, references(:brand, type: :integer, null: false))
      add(:name, :string)
      add(:model, :integer)
      add(:owner, :string)
      timestamps
    end
  end
end
