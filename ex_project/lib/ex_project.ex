defmodule ExProject do
  @moduledoc """
  Documentation for `ExProject`.
  """

  @doc """
  Hello world.

  ## Examples

      iex> ExProject.hello()
      :world

  """
  def hello do
    :world
  end

  def db do
    ExProject.Main.Repo.query!("select 1")
  end
end
