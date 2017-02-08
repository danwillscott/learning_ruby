require_relative 'queue'

RSpec.describe Queue do
  it 'Check basic attributes along with setting read only back and data_store' do
    stack1 = Queue.new

    expect(stack1.back).to eq(0)
    expect(stack1.min).to eq('')
    expect(stack1.max).to eq('')
    expect(stack1.data_store).to eq([])
    expect{stack1.back=1}.to raise_error(NoMethodError)
    expect{stack1.data_store=[1]}.to raise_error(NoMethodError)
  end

  it 'checking enqueue method' do
    stack1 = Queue.new
    stack1.enqueue(5).enqueue(10)
    expect(stack1.back).to eq(10)
    expect(stack1.data_store).to eq([5, 10])
  end

  it 'Checking the dequeue Method' do
    stack1 = Queue.new
    stack1.enqueue(8)
    stack2 = Queue.new
    stack2.enqueue(89).enqueue(4).enqueue(7)
    expect(stack1.dequeue).to eq(8)
    expect(stack2.dequeue).to eq(89)
    expect(stack1.data_store).to eq([])
    expect(stack2.data_store).to eq([4])
  end

  it 'Checking Min Method and value' do
    stack1 = Queue.new
    stack1.enqueue(8)
    stack2 = Queue.new
    stack2.enqueue(89).enqueue(4).enqueue(7)
    expect(stack1.max).to eq(8)
    expect(stack1.min).to eq(8)
    expect(stack1.dequeue).to eq(8)
    expect(stack1.max).to eq('')
    expect(stack1.min).to eq('')
    expect(stack1.data_store).to eq([])
    expect(stack2.max).to eq(89)
    expect(stack2.min).to eq(4)
    expect(stack2.dequeue).to eq(89)
    expect(stack2.max).to eq(4)
    expect(stack2.min).to eq(4)
    expect(stack2.data_store).to eq([4])

  end

  it 'Checking Max Method and value' do

  end

end


#THE DOJO WAY
# require_relative 'queue'
#
# RSpec.describe Queue do
#   before do
#     @queue = Queue.new
#   end
#
#   describe 'attributes' do
#     it 'has getters and setters for data_store' do
#       @queue.data_store = [1, 2, 3]
#       expect(@queue.data_store).to eq([1, 2, 3])
#     end
#
#     it 'has a default value of 0 for back' do
#       expect(@queue.back).to eq(0)
#     end
#
#     it 'has a default value of [] for data store' do
#       expect(@queue.data_store).to eq([])
#     end
#
#     it 'should prevent users from setting back' do
#       expect {
#         @queue.back = 99
#       }.to raise_error
#     end
#   end
#
#   describe 'behavior' do
#     before do
#       @queue.enqueue(1)
#       @queue.enqueue(2)
#       @queue.enqueue(3)
#     end
#
#     it 'enqueues element to the end' do
#       expect(@queue.display).to eq([1,2,3])
#     end
#
#     describe 'dequeue' do
#       it 'dequeues the first-in element' do
#         expect(@queue.dequeue).to eq(1)
#         expect(@queue.display).to eq([2,3])
#         expect(@queue.dequeue).to eq(2)
#         expect(@queue.display).to eq([3])
#         expect(@queue.dequeue).to eq(3)
#         expect(@queue.display).to eq([])
#       end
#
#       it 'returns nil if there is nothing to dequeue' do
#         queue = Queue.new
#         expect(queue.dequeue).to eq(nil)
#       end
#     end
#   end
# end