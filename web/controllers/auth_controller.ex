defmodule Discuss.AuthController do
  use Discuss.Web, :controller
  plug Ueberauth

  def callback(conn, params) do
    %{assigns: %{ueberauth_auth: auth}} = conn
  end
end
