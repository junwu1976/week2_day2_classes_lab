require("minitest/autorun")
require("minitest/reporters")
MiniTest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative("../person_class")

class TestPerson < MiniTest::Test

def setup()
  @person1 = ("Jun", 44)
end
