defmodule Test do

  @walk 1000

  def start() do
    {:ok, shop} = Shop.start(2)
    {:ok, _} = Customer.start("Joe", shop)
    {:ok, _} = Customer.start("Bill", shop)
    {:ok, _} = Customer.start("Jack", shop)  
    {:ok, _} = Customer.start("Ron", shop)
    {:ok, _} = Customer.start("Tom", shop)
    {:ok, _} = Customer.start("Zeb", shop)
    Process.register(shop, :shop)
  end

  def close(), do: send :shop, :close

end