require 'minitest'
require 'minitest/test'
require 'minitest/autorun'
require 'minitest/pride'
require './lib/reunion'

class ReunionTest < Minitest::Test

  def test_reunion_has_location
    reunion = Reunion.new("Camp Echo")

    assert_equal "Camp Echo", reunion.location
  end

  def test_can_add_activites_to_reunion
    reunion = Reunion.new("Camp Echo")
    reunion.add_activity("saska")

    result = reunion.activities

    assert result.all? do |activity|
      activity.class == Activity
    end
  end

  def test_can_calculate_reunion_cost
    reunion = Reunion.new("Camp Echo")
    reunion.add_activity("saska")
    saska = reunion.activities[0]
    saska.add_participant(name: "ellen", paid: 1.00)
    saska.add_participant(name: "trevor", paid: 2.00)

    assert_equal 3.00, reunion.calculate_total_cost(saska)
  end
end
