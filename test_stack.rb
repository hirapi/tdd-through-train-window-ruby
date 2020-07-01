# frozen_string_literal: true

require 'minitest/autorun'
require './stack'

# Test for Stack class
class TestStack < Minitest::Test
  def setup
    @stack = Stack.new
  end

  def test_create
    assert(@stack.empty?)
  end

  def test_push_and_top
    @stack.push(1)
    refute(@stack.empty?)
    assert_equal(1, @stack.top)
  end

  def test_push_and_size
    @stack.push(1)
    assert_equal(1, @stack.size)
    @stack.push(2)
    assert_equal(2, @stack.size)
  end

  def test_empty_pop
    assert_raises(Stack::EmptyStackException) { @stack.pop }
  end
end
