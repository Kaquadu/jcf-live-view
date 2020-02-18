defmodule JcfBugWeb.PageController do
  use JcfBugWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
