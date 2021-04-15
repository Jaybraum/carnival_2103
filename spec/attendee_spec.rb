require './lib/attendee'

RSpec.describe Attendee do
  describe 'instantiation' do
    it '::new' do
      attendee = Attendee.new('Bob', 20)

      expect(attendee).to be_an_instance_of(Attendee)
    end

    it 'has attributes' do
      attendee = Attendee.new('Bob', 20)

      expect(attendee.name).to eq('Ferris Wheel')
      expect(attendee.spending_money).to eq(0)
      expect(attendee.interests).to eq([])
    end
  end
end
