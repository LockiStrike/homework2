# frozen_string_literal: true

# exercise state and behaviour
module StateAndBehaviour
  # class to feel yourself real driver
  class Car
    attr_accessor :color, :model, :current_speed, :sets, :year

    def self.default_car
      Car.new {}
    end

    def initialize(args)
      raise ArgumentError if args.class != Hash
      self.color = args.fetch('color', 'purple')
      self.model = args.fetch('model', 'skyline')
      self.year = args.fetch('year', 2015)
      self.current_speed = 15
    end

    def speed_up(value)
      self.current_speed = value unless value.nil?
    end

    def push_break(value)
      self.current_speed = current_speed - value if value <= current_speed
    end
  end
end
