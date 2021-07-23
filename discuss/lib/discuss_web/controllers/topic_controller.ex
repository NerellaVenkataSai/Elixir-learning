defmodule DiscussWeb.TopicController do

  # code sharing in phoenix
  use DiscussWeb, :controller

  def new(conn, params) do
    IO.puts "********"
    IO.inspect conn
    IO.puts "********"
    IO.inspect params
    IO.puts "********"
  end
end
