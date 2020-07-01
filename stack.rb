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
    ensure_not_empty

    @size -= 1
  end

  def top
    ensure_not_empty

    @value
  end

  def size
    @size
  end

  private

  def ensure_not_empty
    raise EmptyStackException if empty?
  end
end
