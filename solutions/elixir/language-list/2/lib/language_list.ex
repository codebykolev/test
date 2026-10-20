defmodule LanguageList do
  @functional_language "Elixir"
  def new() do
    []
  end

  def add(list, language) do
    [language | list]
  end

  def remove([_ | tail]) do
    tail
  end

  def first([head | _]) do
    head
  end

  def count(list) do
    length(list)
  end

  def functional_list?(list) do
    cond do
      @functional_language in list -> true
      @functional_language not in list -> false
    end
  end
end
