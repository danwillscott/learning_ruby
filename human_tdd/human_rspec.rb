require_relative 'wizard'

RSpec.describe Wizard do
  it 'Wizard has a default health of 50 and intelligence of 25' do
    wizard1 = Wizard.new('Name1')
    # What we want to happen
    expect(wizard1.health).to eq(50)
    expect(wizard1.intelligence).to eq(25)
  end
  it 'Wizard has a heal method that increases health by 10' do
    wizard1 = Wizard.new('Name1')
    # expect 60 health after heal
    expect(wizard1.heal).to eq(60)
  end
  it 'Wizard has an ancestor chain that includes Human' do
    wizard1 = Wizard.new('Name1')
    # What we want to happen
    expect(wizard1.class.ancestors[1] == Human).to eq(true)
  end
  it "Wizard has a fireball method that attacks an object and reduces the object's health" do
    wizard1 = Wizard.new('Name1')
    wizard2 = Wizard.new('Name2')
    wizard1.fire_ball(wizard2)
    # What we want to happen
    expect(wizard2.health).to eq(46)
  end

end