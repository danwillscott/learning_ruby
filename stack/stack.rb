Array.class_eval do

  def in_size(expected_size, fill_with = nil)
    sized = self[0, expected_size]
    sized << fill_with while sized.size < expected_size
    sized
  end

end


class Stack
  # these are set to read only
  attr_reader :back, :data_store
  def initialize
    @back = 0
    @data_store = []
    @holder = 0
  end

  def push(data)
    # back, which displays the last value in the Stack.
    @back = data
    # adds a new value to the end of the data_store
    @data_store += [data]
    # returns self for chaining
    self
  end

  def pop
    # should return nil if there is nothing to pop
    if @data_store.length > 0
      len = @data_store.length
      @holder = @data_store[len-1]
      @data_store = @data_store[0...len-1]
      # reset back to last item
      len = @data_store.length
      @back = @data_store[len-1]
      @holder
    end
  end

end



#  Has an attribute, data_store, which displays an array of the values in the Stack

# Has an attribute, back, which displays the last value in the Stack.

#     Should be 0 by default and a user should not be able to set the back attribute


# Has a push method which adds a new value to the end of the Stack


# Has a pop method which removes the last value of the Stack,
#     should return nil if there is nothing to pop