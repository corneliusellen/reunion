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

  def calculate_cost
    costs = @participants.map do |participant|
      participant.paid
    end
    costs.reduce(0, :+)
  end
end
