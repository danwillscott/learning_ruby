
class SLL
  @@node_count = 0
  @@all_nodes = []
  attr_accessor :head

  def initialize
    @head = nil
  end

  def insert(val, pre_val) # TODO Add insert a value after pre_val
    pre_val
    val
  end

  def find(val) # TODO make find that value or return nil
    if val
      true
    else
      nil
    end
  end

  def remove(val) # TODO make remove remove a value or return nil
    if val
      true
    else
      nil
    end
  end

  def remove_all # TODO make remove all children of this

  end

  def display_nodes # TODO display all nodes
    @@all_nodes
  end

  def add # TODO adds node to the end of sll
    nil
  end

  def min # TODO returns min node value
    nil
  end

  def max # TODO returns max node value
    nil
  end

  def how_many # TODO return count of all nodes
    @@node_count
  end

  private
  def recount
    @@node_count = @@all_nodes.length
  end

end

class SLLNode < SLL
  attr_accessor :value, :next
  def initialize(value)
    @value = value
    @next = nil
    @@node_count += 1
    @@all_nodes.push(self)

  end
end



# zyx Node should have two attributes, value and next

# zyx SLL should have a head attribute which refers to the first node in the list

# zyx SLL should have a method called insert which takes in a value you wish to
# zyx add to the SLL and a value you wish to add that Node after; def insert(val, previousVal)

# zyx SLL should have a method called find which when
# zyx invoked returns the node if found in the SLL or nil if not found

# zyx SLL should have a method called remove which should
# zyx remove the node with that value, return nil if not found

# zyx SLL should have a method called display_nodes which when
# zyx called shows an array of all of the current nodes in the list

# zyx SLL should have a method called display_values which
# zyx when called shows an array of all the current values in the SLL

# zyx SLL should have a method called add which
# zyx when invoked add that node to the end of the SLL

# SLL should have a method called remove_all which
# when invoked removes all of the nodes from the SLL

# SLL should have two methods called min and max
# which return the min and max values of the SLL

# SLL should have a method called how_many which
# when called returns the count of how many nodes are in the SLL