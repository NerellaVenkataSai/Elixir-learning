defmodule DiscussWeb.Topic do
  use DiscussWeb, :model

  schema "topics"  do
    field :title, :string
  end

  # to check changeset functionality in iex
  # iex -S mix
  # Behind the scene schema is framing struct for Topic model
  # struct = DiscussWeb.Topic
  # params = %{title: 'abc'}
  # DiscussWeb.Topic.changeset(struct, params) // return Changeset obj/hash

  # \\ %{} represents default parameter
  def changeset(struct, params \\ %{}) do
    struct
      |> cast(params, [:title])
      |> validate_required([:title])
  end
end
