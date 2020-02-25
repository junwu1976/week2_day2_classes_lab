class BusStop

  attr_reader :name, :queue

def initialize(name, q=[])
  @name = name
  @queue = q
end

def add_person_to_queue(person)
  @queue.push(person)
end




end
