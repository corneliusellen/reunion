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

  def split_cost
    calculate_cost / @participants.count
  end

  def calculate_dues
    dues = @participants.map do |participant|
      due = participant.paid - split_cost
      name = participant.name.to_sym
      [name, due]
    end
    Hash[dues]
  end

end
