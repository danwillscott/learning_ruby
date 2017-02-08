require_relative 'life_tree'

RSpec.describe AppleTree do
  it 'Check age height and apples'do
    tree1 = AppleTree.new(4, 100)
    tree2 = AppleTree.new(1, 50)
    #checking height age apples for 0 apples and 50 apples
    expect(tree1.height).to eq(100)
    expect(tree1.age).to eq(4)
    expect(tree1.apples).to eq(50)
    expect(tree2.height).to eq(50)
    expect(tree2.age).to eq(1)
    expect(tree2.apples).to eq(0)

  end

  it 'checking picked_apples with 0 apples and 50 apples' do
    tree1 = AppleTree.new(5, 200)
    tree2 = AppleTree.new(1, 100)

    expect(tree1.pick_apples).to eq(50)
    expect(tree2.pick_apples).to eq(0)
  end

  it 'Checking years gone by for apple growth and stop growth' do
    tree1 = AppleTree.new(3, 200) # will start making apples
    tree1.years_gone_by
    tree2 = AppleTree.new(5, 200) # will make apples
    tree2.years_gone_by
    tree3 = AppleTree.new(9, 200) # will stop making apples
    tree3.years_gone_by

    expect(tree1.pick_apples).to eq(50)
    expect(tree2.pick_apples).to eq(100)
    expect(tree3.pick_apples).to eq(0)
  end
end