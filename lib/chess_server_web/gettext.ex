defmodule ChessServerWeb.Gettext do
  @moduledoc """
  A module providing Internationalization with a gettext-based API.

  By using [Gettext](https://hexdocs.pm/gettext),
  your module is already ready and provides the necessary
  functions for string manipulation.
  """
  use Gettext, otp_app: :chess_server
end
