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

  def test_reunion_has_activities
    reunion = Reunion.new("Camp Echo")

    assert_instance_of Activity, reunion.activities
  end
end
