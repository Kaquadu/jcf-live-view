defmodule JcfBug.SomeSchema do
  # uses
  use JcfBug.Schema

  schema "some_schema" do
    field :option, :string, null: false
  end

  def changeset(schema, attrs \\ %{}) do
    schema
    |> cast(attrs, [:option])
    |> validate_required([:option])
  end
end
