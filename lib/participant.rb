class Participant

  attr_reader :name,
              :paid

  def initialize(participant)
    @name = participant[:name]
    @paid = participant[:paid]
  end

end
