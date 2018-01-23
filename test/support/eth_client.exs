defmodule ETH.TestClient do
  def start do
    spawn(fn ->
      "ganache-cli -b=1 -m=\" parent leopard beauty edit tilt what blast next huge need print advice evolve move explain govern grab raccoon gown gravity gloom walnut silver reopen\""
      |> String.to_charlist
      |> :os.cmd()
    end)

    Process.sleep(3000)
  end

  def stop do
    "pkill -f ganache-cli"
    |> String.to_charlist
    |> :os.cmd()
  end
end
