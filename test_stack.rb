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
end
