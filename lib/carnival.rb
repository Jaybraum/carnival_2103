class Carnival
  attr_reader :name,
              :rides,
              :attendees
  def initialize(name)
    @name = name
    @rides = []
    @attendees = []
  end

  def add_ride(ride)
    @rides << ride
  end

  def admit(attendee)
    @attendees << attendee
  end

  def recommend_rides(attendee)
    recommend = []
    @rides.each do |ride|
      recommend << ride if ride.name == attendee.interests
    end
    recommend
  end
end
