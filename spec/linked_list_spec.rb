# frozen_string_literal: true

require './lib/linked_list'

RSpec.describe LinkedList do
  it 'exists and has attributes' do
    list = LinkedList.new
    expect(list.head).to eq(nil)
  end

  it '#append' do
    list = LinkedList.new
    list.append('doop')

    expect(list.head).to be_a(Node)
    expect(list.head.next_node).to eq(nil)
  end

  it '#count' do
    list = LinkedList.new
    list.append('doop')

    expect(list.count).to eq(1)

    list.append('bop')

    expect(list.count).to eq(2)
  end

  it '#to_string' do
    list = LinkedList.new
    list.append('doop')
    expect(list.to_string).to eq('doop')
  end

  it 'works with multiple nodes' do
    list = LinkedList.new
    list.append('doop')
    list.append('deep')

    expect(list.head.next_node.data).to eq('deep')
    expect(list.head.next_node.next_node).to eq(nil)
    expect(list.to_string).to eq('doop deep')
  end

  it '#prepend' do
    list = LinkedList.new
    list.append('plop')
    list.append('suu')
    list.prepend('dop')

    expect(list.to_string).to eq('dop plop suu')
  end

  it '#insert' do
    list = LinkedList.new
    list.append('plop')
    list.append('suu')
    list.prepend('dop')
    list.insert(1, 'woo')

    expect(list.to_string).to eq('dop woo plop suu')
  end

  it '#includes' do
    list = LinkedList.new
    list.append('deep')
    list.append('woo')
    list.append('shi')
    list.append('shu')
    list.append('blop')

    expect(list.to_string).to eq('deep woo shi shu blop')
    expect(list.find(2, 1)).to eq('shi')
    expect(list.find(1, 3)).to eq('woo shi shu')
  end
end
