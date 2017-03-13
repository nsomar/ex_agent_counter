use ExAgent

defagent ExagentCounter do

  initialize do
    +counter(10)
    !count
  end

  rule (+!count) when counter(0) do
    &print("Done!")
    &exit
  end

  rule (+!count) when counter(X) do
    -+counter(X - 1)
    &print("Counter Value #{X}")
    !count
  end

end