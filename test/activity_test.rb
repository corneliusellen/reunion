require 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require './lib/activity'

class ActivityTest < Minitest::Test

  def test_activity_has_name
    activity = Activity.new("hiking", name: "ellen", paid: 1.00)

    assert_equal "hiking", activity.name
  end

  def test_activity_can_have_participants
    activity = Activity.new("hiking", name: "ellen", paid: 1.00)

    assert_instance_of Participant, activity.participants
  end
end
