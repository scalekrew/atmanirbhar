defmodule Atmanirbhar.Catalog do
  @moduledoc """
  The Catalog context.
  """

  import Ecto.Query, warn: false
  alias Atmanirbhar.Repo

  alias Atmanirbhar.Catalog.Blueprint

  @doc """
  Returns the list of catalog_blueprints.

  ## Examples

      iex> list_catalog_blueprints()
      [%Blueprint{}, ...]

  """
  def list_catalog_blueprints do
    Repo.all(Blueprint)
  end

  @doc """
  Gets a single blueprint.

  Raises `Ecto.NoResultsError` if the Blueprint does not exist.

  ## Examples

      iex> get_blueprint!(123)
      %Blueprint{}

      iex> get_blueprint!(456)
      ** (Ecto.NoResultsError)

  """
  def get_blueprint!(id), do: Repo.get!(Blueprint, id)

  @doc """
  Creates a blueprint.

  ## Examples

      iex> create_blueprint(%{field: value})
      {:ok, %Blueprint{}}

      iex> create_blueprint(%{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def create_blueprint(attrs \\ %{}) do
    %Blueprint{}
    |> Blueprint.changeset(attrs)
    |> Repo.insert()
  end

  @doc """
  Updates a blueprint.

  ## Examples

      iex> update_blueprint(blueprint, %{field: new_value})
      {:ok, %Blueprint{}}

      iex> update_blueprint(blueprint, %{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def update_blueprint(%Blueprint{} = blueprint, attrs) do
    blueprint
    |> Blueprint.changeset(attrs)
    |> Repo.update()
  end

  @doc """
  Deletes a blueprint.

  ## Examples

      iex> delete_blueprint(blueprint)
      {:ok, %Blueprint{}}

      iex> delete_blueprint(blueprint)
      {:error, %Ecto.Changeset{}}

  """
  def delete_blueprint(%Blueprint{} = blueprint) do
    Repo.delete(blueprint)
  end

  @doc """
  Returns an `%Ecto.Changeset{}` for tracking blueprint changes.

  ## Examples

      iex> change_blueprint(blueprint)
      %Ecto.Changeset{data: %Blueprint{}}

  """
  def change_blueprint(%Blueprint{} = blueprint, attrs \\ %{}) do
    Blueprint.changeset(blueprint, attrs)
  end
end