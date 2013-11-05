require 'test_helper'

class HtmlRadarTest < ActiveSupport::TestCase

  test "hi" do
    assert_equal "Hello World!", HtmlRadar.hi
    puts "hi"
  end

  test "show" do
    memory = "<p><a href='test.html'>Dynamic</a></p><!-- split_tag --><p><a href='test.html'>Static</a></p>"
    assert_no_match "Static", HtmlRadar.show(memory)
    assert_match "Dynamic", HtmlRadar.show(memory)
    puts "show"
    puts HtmlRadar.show(memory)
  end

  test "refresh" do
    memory = ""
    memory = HtmlRadar.refresh(memory, "test.html", "a", "ul", "_123_")
    assert_match "Static", memory
    assert_match "Dynamic", memory
    assert_match "<ul>", memory
    assert_match "#_123_", memory
    assert_match "Static", HtmlRadar.show(memory)
    assert_match "Dynamic", HtmlRadar.show(memory)
    assert_match "<ul>", HtmlRadar.show(memory)
    assert_match "#_123_", HtmlRadar.show(memory)
    memory = HtmlRadar.refresh(memory, "test.html", "a", "ul", "_123_")
    assert_no_match "Static", HtmlRadar.show(memory)
    assert_match "Dynamic", HtmlRadar.show(memory)
    assert_match "<ul>", HtmlRadar.show(memory)
    assert_match "#_123_", HtmlRadar.show(memory)
  end

end
