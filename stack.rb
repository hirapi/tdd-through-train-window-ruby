# frozen_string_literal: true

# Sample class representing stack
class Stack
  class EmptyStackException < StandardError; end

  def initialize
    @size = 0
  end

  def empty?
    @size.zero?
  end

  def push(value)
    @value = value
    @size += 1
  end

  def pop
    raise EmptyStackException
  end

  def top
    @value
  end

  def size
    @size
  end
end
