defmodule Martyparty.Application do
  # See https://hexdocs.pm/elixir/Application.html
  # for more information on OTP Applications
  @moduledoc false

  use Application

  @impl true
  def start(_type, _args) do
    children = [
      # Start the Ecto repository
      Martyparty.Repo,
      # Start the PubSub system
      {Phoenix.PubSub, name: Martyparty.PubSub},
      # Start Finch
      {Finch, name: Martyparty.Finch}
      # Start a worker by calling: Martyparty.Worker.start_link(arg)
      # {Martyparty.Worker, arg}
    ]

    Supervisor.start_link(children, strategy: :one_for_one, name: Martyparty.Supervisor)
  end
end
