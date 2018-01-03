require './lib/activity'
class Reunion

attr_reader :location,
            :activities

  def initialize(location)
    @location = location
    @activities = Activity.new("hey")
  end

end
