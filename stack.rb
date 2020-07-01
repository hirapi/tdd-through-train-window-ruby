# frozen_string_literal: true

# Sample class representing stack
class Stack
  def empty?
    true
  end

  def push(value)
    @value = value
  end

  def top
    @value
  end
end
