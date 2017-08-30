defmodule Discuss.AuthController do
  use Discuss.Web, :controller
  plug Ueberauth
  alias Discuss.User

  def callback(conn, params) do
    %{assigns: %{ueberauth_auth: auth}} = conn
    user_params = %{
      token: auth.credentials.token,
      email: auth.info.email,
      provider: "github"
    }
    changeset = User.changeset(%User{}, user_params)
  end
end
