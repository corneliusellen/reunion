require './lib/participant'

class Activity

  attr_reader :name,
              :participants

  def initialize(activity)
    @name = activity
    @participants = []
  end

  def add_participant(info)
     participant = Participant.new(info)
     @participants << participant
  end

end
