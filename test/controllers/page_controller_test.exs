defmodule ALatteArt.PageControllerTest do
  use ALatteArt.ConnCase

  test "GET /" do
    conn = get conn(), "/"
    assert html_response(conn, 200) =~ "Welcome to Phoenix!"
  end
end
