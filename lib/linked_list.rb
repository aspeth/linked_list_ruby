# frozen_string_literal: true

require 'node'

class LinkedList
  attr_reader :head

  def initialize(head = nil)
    @head = head
  end

  def append(data)
    new_node = Node.new(data)
    current = @head
    if @head.nil?
      @head = new_node
    else
      current = current.next_node until current.next_node.nil?
      current.next_node = Node.new(data)
    end
  end

  def count
    return 0 if @head.nil?

    current = @head
    counter = 1
    until current.next_node.nil?
      counter += 1
      current = current.next_node
    end
    counter
  end

  def to_string
    text = String.new
    current = @head
    while current
      text.concat("#{current.data} ")
      current = current.next_node
    end
    text.strip
  end

  def prepend(data)
    previous_head = @head
    @head = Node.new(data, previous_head)
  end

  def insert(index, data)
    counter = 0
    current = @head
    until index == counter
      previous = current
      current = current.next_node
      counter += 1
    end
    previous.next_node = Node.new(data, current)
  end

  def includes(data)
    false if @head.nil?
    current = @head
    until current.next_node.nil?
      return true if current.data == data

      current = current.next_node
    end
    false
  end
end
