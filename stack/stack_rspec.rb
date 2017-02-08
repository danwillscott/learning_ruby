require_relative 'stack'

RSpec.describe Stack do
  it 'Check basic attributes along with setting read only back and data_store' do
    stack1 = Stack.new

    expect(stack1.back).to eq(0)
    expect(stack1.data_store).to eq([])
    expect{stack1.back=1}.to raise_error(NoMethodError)
    expect{stack1.data_store=[1]}.to raise_error(NoMethodError)
  end

  it 'checking Push method' do
    stack1 = Stack.new
    stack1.push(5).push(10)
    expect(stack1.back).to eq(10)
    expect(stack1.data_store).to eq([5, 10])
  end

  it 'Checking the Pop Method' do
    stack1 = Stack.new
    stack1.push(8)
    stack2 = Stack.new
    stack2.push(89).push(4).push(7)
    expect(stack1.pop).to eq(8)
    expect(stack2.pop).to eq(7)
    expect(stack1.data_store).to eq([])
    expect(stack2.data_store).to eq([89, 4])
  end

end