require 'test_helper'

class HtmlRadarTest < ActiveSupport::TestCase

  test "HtmlRadar refresh url" do
    memory = "<p><a href='test.html'>Static</a></p><!-- split_tag -->"
    assert_no_match "Static", HtmlRadar.refresh(memory, "test.html", "a")
    assert_match "Dynamic", HtmlRadar.refresh(memory, "test.html", "a")
  end

  test "HtmlRadar show url" do
    memory = "<p><a href='test.html'>Dynamic</a></p><!-- split_tag --><p><a href='test.html'>Static</a></p>"
    assert_no_match "Static", HtmlRadar.refresh(memory, "test.html", "a")
    assert_match "Dynamic", HtmlRadar.refresh(memory, "test.html", "a")
  end

  test "HtmlRadar.hi" do
    assert_equal "Hello World!", HtmlRadar.hi
  end

  test "truth" do
    assert_kind_of Module, HtmlRadar
  end
end
