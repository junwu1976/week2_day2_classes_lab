require("minitest/autorun")
require("minitest/reporters")
MiniTest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative("../bus_stop_class")
require_relative("../person_class")

class TestBusStop < MiniTest::Test

  def setup()
    @bus_stop1 = BusStop.new("Leith Walk")
    @person1 = Person.new("Bob", 35)
  end

  def test_add_person_to_queue()
    @bus_stop1.add_person_to_queue(@person1)
    assert_equal(1, @bus_stop1.queue.length)
  end

end
