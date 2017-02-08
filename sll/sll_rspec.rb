require 'rspec'
require_relative 'sll'

RSpec.describe 'SLL, SLLNode' do
  newSLL = SLL.new
  node = SLLNode.new(10)
  node2 = SLLNode.new(5)
  newSLL.head = node
  newSLL.head.next = node2

  it 'Testing attrs for SLLNode assigned to parent SLL' do
    expect(node.value).to eq(10)
    expect(node.next).to_not eq(nil)
    expect(node.next.value).to eq(5)
    expect(node.next.next).to eq(nil)
    expect(newSLL.head.value).to eq(10)
    expect(newSLL.head.next.value).to eq(5)


    expect(node.next).to_not eq(nil)
    expect(node.next).to_not eq(nil)
  end
  it 'Testing Method "display_node" for SLLNode in parent SLL' do
    expect(newSLL.display_nodes).to_not eq(nil)
    expect(newSLL.display_nodes[0].value).to eq(10)
    expect(newSLL.display_nodes[0].next.value).to eq(5)

  end
  it 'Testing Method "insert" for SLLNode in parent SLL' do
    # expect(newSLL.display_nodes).to_not eq(nil)
  end
  it 'Testing Method "find" for SLLNode in parent SLL' do
    # expect(newSLL.display_nodes).to_not eq(nil)
  end
  it 'Testing Method "remove" for SLLNode in parent SLL' do
    # expect(newSLL.display_nodes).to_not eq(nil)
  end
  it 'Testing Method "remove_all" for SLLNode in parent SLL' do
    # expect(newSLL.display_nodes).to_not eq(nil)
  end
  it 'Testing Method "remove_all" for SLLNode in parent SLL' do
    # expect(newSLL.display_nodes).to_not eq(nil)
  end
end