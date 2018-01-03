require 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require './lib/activity'

class ActivityTest < Minitest::Test

  def test_activity_has_name
    activity = Activity.new("hiking")

    assert_equal "hiking", activity.name
  end

  def test_activity_can_have_participant
    activity = Activity.new("hiking")
    activity.add_participant(name: "ellen", paid: 1.00)

    result = activity.participants

    assert result.all? do |element|
      element.class == Participant
    end
  end

  def test_activity_can_have_multiple_participants
    activity = Activity.new("hiking")
    activity.add_participant(name: "ellen", paid: 1.00)
    activity.add_participant(name: "trevor", paid: 2.00)

    result = activity.participants

    assert result.all? do |element|
      element.class == Participant
    end
  end 
end
