require 'minitest/autorun'
require 'date'
require 'time'
require_relative 'gigasecond'

class GigasecondTest < MiniTest::Unit::TestCase

  def test_1
    gs = Gigasecond.new(Date.new(2011, 4, 25))
    assert_equal Date.new(2043, 1, 1), gs.date
  end

  def test_2
    gs = Gigasecond.new(Date.new(1977, 6, 13))
    assert_equal Date.new(2009, 2, 19), gs.date
  end

  def test_3
    gs = Gigasecond.new(Date.new(1959, 7, 19))
    assert_equal Date.new(1991, 3, 27), gs.date
  end

  def test_yourself
    your_birthday = Date.new(1988, 11, 02)
    gs = Gigasecond.new(your_birthday)
    assert_equal Date.new(2020, 07, 11), gs.date
  end

end
