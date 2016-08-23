require 'minitest/autorun'
require 'minitest/pride'
require './lib/node'

class NodeTest < Minitest::Test

  def test_it_can_create_a_new_node
    node = Node.new(100, "Eternal Sunshine of the Spotless Mind")
    assert_equal Node, node.class
  end

  def test_it_can_return_ratings_of_a_node
    node = Node.new(100, "Eternal Sunshine of the Spotless Mind")
    assert_equal 100, node.rating
  end

  def test_it_can_return_titles_of_a_node
    node = Node.new(100, "Eternal Sunshine of the Spotless Mind")
    assert_equal "Eternal Sunshine of the Spotless Mind", node.title
  end

  def test_its_left_and_right_are_nil_to_start
    node = Node.new(100, "Eternal Sunshine of the Spotless Mind")
    assert_equal nil, node.left
    assert_equal nil, node.right
  end
end
