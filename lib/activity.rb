require './lib/participant'

class Activity

  attr_reader :name,
              :participants

  def initialize(activity, participant)
    @name = activity
    @participants = Participant.new(participant)
  end


end
