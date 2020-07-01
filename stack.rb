# frozen_string_literal: true

# Sample class representing stack
class Stack
  class EmptyStackException < StandardError; end

  attr_reader :size

  def initialize
    @values = []
    @size = 0
  end

  def empty?
    @size.zero?
  end

  def push(value)
    @values[@size] = value
    @size += 1
  end

  def pop
    ensure_not_empty

    @size -= 1
  end

  def top
    ensure_not_empty

    @values[@size - 1]
  end

  private

  def ensure_not_empty
    raise EmptyStackException if empty?
  end
end
