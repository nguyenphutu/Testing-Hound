defmodule NewTestHoundTest do
  use ExUnit.Case
  use Hound.Helpers

  hound_session()

  test "google search", meta do
    navigate_to("https://www.google.com/")

    element = find_element(:name, "q")
    fill_field(element, "Hound test")
    submit_element(element)

    assert page_title() == "Hound test - Tìm với Google"
  end

end
