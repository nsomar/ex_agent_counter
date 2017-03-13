defmodule Mix.Tasks.RunAgent do
  use Mix.Task

  def run(_) do
    ExAgent.start_agent(ExagentCounter, "agent1")
    Process.sleep(10000)
  end
end