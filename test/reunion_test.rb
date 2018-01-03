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

end
