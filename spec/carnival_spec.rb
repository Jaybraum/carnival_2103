require './lib/carnival'
require './lib/attendee'
require './lib/ride'

RSpec.describe Carnival do
  describe 'instantiation' do
    it '::new' do
      jeffco_fair = Carnival.new("Jefferson County Fair")

      expect(Carnival).to be_an_instance_of(Carnival)
    end

    it 'has attributes' do
      jeffco_fair = Carnival.new("Jefferson County Fair")

      expect(jeffco_fair.name).to eq("Jefferson County Fair")
      expect(jeffco_fair.name).to eq([])
    end
  end
end
