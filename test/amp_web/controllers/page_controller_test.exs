defmodule AmpWeb.PageControllerTest do
  use AmpWeb.ConnCase
  require Phoenix.LiveViewTest

  test "GET /", %{conn: conn} do
    conn = get(conn, ~p"/")
    assert html_response(conn, 200) =~ "Peace of mind from prototype to production"
  end

  test "example" do
    assert Phoenix.LiveViewTest.render_component(&AmpWeb.CoreComponents.example/1,
             query: %{a: :b, c: :d}
           ) == """
           <a href="/?c=d&a=b" data-phx-link="patch" data-phx-link-state="push">example</a>\
           """
  end
end
