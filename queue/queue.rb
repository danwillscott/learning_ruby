class Queue
  # these are set to read only
  attr_reader :back, :data_store, :min, :max
  def initialize
    @back = 0
    @data_store = []
    @holder = 0
    @min = ''
    @max = ''
  end

  def enqueue(data)
    if @max == '' and @min == ''
      @max = data
      @min = data
    elsif data > @max and @max != ''
      @max = data
    end
    if data < @min and @min != ''
      @min = data
    end
    # back, which displays the last value in the Stack.
    @back = data
    # adds a new value to the end of the data_store
    @data_store += [data]
    # returns self for chaining
    self
  end

  def dequeue
    # should return nil if there is nothing to dequeue
    if @data_store.length > 0
      len = @data_store.length
      @holder = @data_store[0]

      # resizing data_store
      @data_store = @data_store[1...len-1]

      if @holder == @min and @data_store.length >= 0
        @min = @data_store[0]
        find_min
      elsif @data_store.length == 0
        @min = ''
      end
      if @holder == @max and @data_store.length >= 0
        @max = @data_store[0]
        find_max
      elsif @data_store.length == 0
        @max = ''

      end


      # resets min and max to '' if @data_store is empty
      if @data_store.length == 0
        @min = ''
        @max = ''
      end
      # reset back to last item
      len = @data_store.length
      @back = @data_store[len-1]
      @holder
    end
  end

  def find_min
    @data_store.each {|i| @min = i if @min >= i}
  end

  def find_max
    @data_store.each {|i| @max = i if @max <= i}
  end

end



#  Has an attribute, data_store, which displays an array of the values in the Stack

# Has an attribute, back, which displays the last value in the Stack.

#     Should be 0 by default and a user should not be able to set the back attribute


# Has a enqueue method which adds a new value to the end of the Stack


# Has a dequeue method which removes the last value of the Stack,
#     should return nil if there is nothing to dequeue

# DOJO WAY
# class Queue
#   attr_accessor :data_store
#   attr_reader :back
#
#   def initialize
#     @back = 0
#     @data_store = []
#   end
#
#   def enqueue(item)
#     @data_store[@back] = item
#     @back += 1
#   end
#
#   def display
#     output = []
#     for i in 0...@back
#       output << @data_store[i]
#     end
#     output
#   end
#
#   def dequeue
#     output = @data_store[0]
#     for i in 1...@back
#       @data_store[i - 1] = @data_store[i]
#     end
#     @back -= 1
#     output
#   end
# end