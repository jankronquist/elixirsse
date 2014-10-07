defmodule MySup do
  use Application

  def start(_type, _args), do: MySup.Sup.start_link

  defmodule Sup do
    use Supervisor
    def start_link, do: Supervisor.start_link(__MODULE__,[])
    def init([]) do
      supervise([
        supervisor(Ewebmachine.Sup,[[modules: [ElixirSSE],port: 8080]])
      ], strategy: :one_for_one)
    end
  end
end