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
end
