defmodule FlowMvp.PageController do
  use FlowMvp.Web, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
