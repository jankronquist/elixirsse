defmodule Wait do
  def forever() do
    :timer.sleep(10000000)
    forever()
  end
end

Wait.forever()
