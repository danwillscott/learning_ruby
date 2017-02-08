require_relative 'solor_system'

#zyx Planet RSPEC CHECKS
RSpec.describe Planet do

  it 'Checks if planet name is callable' do
    planet1 = Planet.new('planet1')
    planet2 = Planet.new('planet2')

    expect(planet1.name).to eq('planet1')
    expect(planet2.name).to eq('planet2')
  end
  it 'Checks if planet Description is callable' do
    planet1 = Planet.new('planet1')
    planet1.description='Desc1'
    planet2 = Planet.new('planet2')
    planet2.description='Desc2'

    expect(planet1.description).to eq('Desc1')
    expect(planet2.description).to eq('Desc2')
  end
  it 'Checks if planet population is callable' do
    planet1 = Planet.new('planet1')
    planet1.population=1000
    planet2 = Planet.new('planet2')
    planet2.population=500

    expect(planet1.population).to eq(1000)
    expect(planet2.population).to eq(500)
  end
end

#zyx SolarSystem RSPEC

RSpec.describe SolarSystem do
  it 'Checking if all method and Set Name' do
    solar_system1 = SolarSystem.new('solar1')
    solar_system2 = SolarSystem.new('solar2')

    expect(solar_system1.all).to eq(6)
    expect(solar_system1.name).to eq('solar1')
    expect(solar_system2.all).to eq(6)
    expect(solar_system2.name).to eq('solar2')
  end
  it 'Checking if default name' do
    solar_system1 = SolarSystem.new
    solar_system2 = SolarSystem.new

    expect(solar_system1.name).to eq('Andromeda')
    expect(solar_system2.name).to eq('Andromeda')
  end
  it 'Checking if planet_list method and if it ignores solar systems' do
    solar_system1 = SolarSystem.new('Andromeda')
    solar_system2 = SolarSystem.new('Andromeda')

    expect(solar_system1.planet_list[0].name).to eq('planet1')
    expect(solar_system2.planet_list[1].name).to eq('planet2')
  end
  it 'Super Nova Check' do
    solar_system1 = SolarSystem.new
    solar_system1.super_nova

    expect{solar_system1.planet_list[0].name}.to raise_error(NoMethodError)
    expect{solar_system1.planet_list[1].name}.to raise_error(NoMethodError)
  end

end