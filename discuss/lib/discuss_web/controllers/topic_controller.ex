defmodule DiscussWeb.TopicController do

  # code sharing in phoenix
  use DiscussWeb, :controller
  alias DiscussWeb.Topic

  def new(conn, params) do
    IO.puts "********"
    IO.inspect conn
    IO.puts "********"
    IO.inspect params
    IO.puts "********"

    struct = %Topic{}
    params = %{}
    _changeset = Topic.changeset(struct, params)

  end

  def create(_conn, params) do
    IO.puts "********"
    IO.inspect params
    %{"topic" => topic} = params
    changeset = Topic.changeset(%Topic{}, topic)
    Repo.insert(changeset)
  end
end
