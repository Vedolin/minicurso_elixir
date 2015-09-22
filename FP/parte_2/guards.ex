defmodule Guards do

  @doc """
    Guards são condições para filtrar parâmetros de entrada em uma função.

    Um Guard é definido com um ```when``` após a declaração dos parâmetros
  """

  def fibonacci(num) when num <= 2, do: 1
  def fibonacci(num) do
    fibonacci(num-1) + fibonacci(num-2);
  end

  def valores_da_lista([]), do: :ok
  def valores_da_lista(lista) do
    [primeiro_elem | resto] = lista
    IO.puts primeiro_elem
    valores_da_lista resto
  end

  def counter(nil, fim), do: counter(0, fim)
  def counter(inicio, fim) when inicio > fim, do: IO.puts "invalid"
  def counter(inicio, fim) when inicio == fim, do: IO.puts inicio
  def counter(inicio, fim) do
    IO.puts inicio
    counter(inicio+1, fim)
  end

end
