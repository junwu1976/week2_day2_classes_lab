require('pry')

class Bus

  attr_reader :route_number, :destination, :passengers

  def initialize(route_number, destination)
    @route_number = route_number
    @destination = destination
    @passengers = []
  end

def drive()
  return "Brum brum"
end

def add_passengers(passenger)
  @passengers << passenger
end

def drop_off_passengers(passenger)
  @passengers.delete(passenger)
end

def remove_all_passengers()
  @passengers.clear
end

def pick_up_from_stop(bus_stop)
  if bus_stop.queue.count > 0
    for passenger in bus_stop.queue
      add_passengers(passenger)
    end
    bus_stop.queue.clear
  end
end



end
