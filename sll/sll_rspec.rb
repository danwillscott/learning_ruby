require 'rspec'
require_relative 'sll'

RSpec.describe 'SLL, SLLNode' do
  newSLL = SLL.new
  node = SLLNode.new(10)
  node2 = SLLNode.new(10)
  newSLL.head = node
  newSLL.head.next = node2

  it 'Testing attrs for SLLNode assigned to parent SLL' do
    expect(node).to_not eq(nil)


    expect(newSLL.head.value).to eq(10)


    expect(node.next.value).to eq(10)
    expect(node.next.value).to eq(10)
    expect(newSLL.head.value).to eq(10)
    expect(node.value).to eq(10)
    expect(node.next).to_not eq(nil)
    expect(node.next).to_not eq(nil)
  end
  it 'Testing Methods for SLLNode in parent SLL' do
    expect(newSLL.display_nodes).to eq(nil)
    expect(newSLL.insert(1, 0)).to eq(1)
    expect(newSLL.head.value).to eq(10)

  end
end