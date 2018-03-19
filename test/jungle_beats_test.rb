require 'minitest/autorun'
require 'minitest/pride'
require './lib/jungle_beats'
require 'pry'

class TestJungleBeats < Minitest::Test
  def test_exist
    beats = JungleBeats.new
    assert_instance_of JungleBeats, beats
  end
end
