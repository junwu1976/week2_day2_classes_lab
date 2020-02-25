require("minitest/autorun")
require("minitest/reporters")
MiniTest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative("../bus_class")
require_relative("../person_class")
require_relative("../bus_stop_class")

class TestBus < MiniTest::Test

  def setup()
    @bus1 = Bus.new("22", "Ocean Terminal")

    @passenger1 = Person.new("Stephen", 29)

    @bus_stop1 = BusStop.new("Easter Road", [@passenger1, @passenger1])
  end

  def test_drive()
    assert_equal("Brum brum", @bus1.drive)
  end

  def test_get_passengers()
    assert_equal(0, @bus1.passengers.length)
  end

  def test_add_passengers()
    @bus1.add_passengers(@passenger1)
    assert_equal(1, @bus1.passengers.length)
  end

  def test_drop_off_passengers()
    @bus1.add_passengers(@passenger1)
    @bus1.drop_off_passengers(@passenger1)
    assert_equal(0, @bus1.passengers.length)
  end

  def test_remove_all_passengers()
    @bus1.add_passengers(@passenger1)
    @bus1.add_passengers(@passenger1)
    @bus1.add_passengers(@passenger1)
    @bus1.remove_all_passengers()
    assert_equal(0, @bus1.passengers.length)
  end

  def test_pick_up_from_stop()
    #check bus stop queue
    #if queue not empty
    #add passengers
    #empty the queue at the bus stop
    @bus1.pick_up_from_stop(@bus_stop1)
    assert_equal(2, @bus1.passengers.length)
    assert_equal(0, @bus_stop1.queue.length)
  end


  end
