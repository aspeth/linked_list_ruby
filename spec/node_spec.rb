# frozen_string_literal: true

require 'node'

RSpec.describe Node do
  it 'exists and has attributes' do
    node = Node.new('plop')
    expect(node.data).to eq('plop')
    expect(node.next_node).to eq(nil)
  end
end
