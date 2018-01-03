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

end
