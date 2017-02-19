defmodule FlowMvp.AppTest do
  use FlowMvp.ModelCase

  alias FlowMvp.App

  @valid_attrs %{desc: "some content", name: "some content"}
  @invalid_attrs %{}

  test "changeset with valid attributes" do
    changeset = App.changeset(%App{}, @valid_attrs)
    assert changeset.valid?
  end

  test "changeset with invalid attributes" do
    changeset = App.changeset(%App{}, @invalid_attrs)
    refute changeset.valid?
  end
end
