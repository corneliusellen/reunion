require './lib/activity'
class Reunion

attr_reader :location,
            :activities

  def initialize(location)
    @location = location
    @activities = []
  end

  def add_activity(name)
     activity = Activity.new(name)
     @activities << activity
  end

  def calculate_total_cost(word)
    located = @activities.find do |activity|
      activity.name == word
    end
    located.calculate_cost
  end

end
