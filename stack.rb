# frozen_string_literal: true

# Sample class representing stack
class Stack
  def initialize
    @size = 0
  end

  def empty?
    true
  end

  def push(value)
    @value = value
    @size += 1
  end

  def top
    @value
  end

  def size
    @size
  end
end
