require './lib/attendee'

RSpec.describe Attendee do
  describe 'instantiation' do
    it '::new' do
      attendee = Attendee.new('Bob', 20)

      expect(attendee).to be_an_instance_of(Attendee)
    end

    it 'has attributes' do
      attendee = Attendee.new('Bob', 20)

      expect(attendee.name).to eq('Bob')
      expect(attendee.spending_money).to eq(20)
      expect(attendee.interests).to eq([])
    end
  end
  describe 'methods' do
    it '#add interests' do
      attendee = Attendee.new('Bob', 20)
      attendee.add_interest('Bumper Cars')
      attendee.add_interest('Ferris Wheel')

      expect(attendee.interests).to eq(["Bumper Cars", "Ferris Wheel"])
    end

    it '#find interest' do
      attendee = Attendee.new('Bob', 20)
      attendee.add_interest('Bumper Cars')
      attendee.add_interest('Ferris Wheel')

      expect(attendee.interest).to eq(["Bumper Cars", "Ferris Wheel"])
    end
  end
end
