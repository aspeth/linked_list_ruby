# frozen_string_literal: true

require 'node'

class LinkedList
  attr_reader :head, :count

  def initialize(head = nil)
    @head = head
    @count = 0
  end

  # this breaks at like 3 elements and goes into an infinite loop
  def append(data)
    if @head.nil?
      @head = Node.new(data)
    else
      current = @head
      current = current.next_node until current.next_node.nil?
      current.next_node = Node.new(data)
    end
    @count += 1
  end

  def to_string
    text = ''
    current = @head
    until current.nil?
      text << "#{current.data} "
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

  def find(index, _quantity)
    counter = 0
    until index == counter

    end
  end
end
