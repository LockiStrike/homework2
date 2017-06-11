# frozen_string_literal: true

# exercise state and behaviour
module StateAndBehaviour
  # class to feel yourself real driver
  class Car
    attr_reader :color, :model, :current_speed, :year

    def self.default_car
      new({})
    end

    def initialize(args)
      raise ArgumentError unless args.instance_of? Hash
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

    private

    attr_writer :color, :model, :current_speed, :year
  end
end
