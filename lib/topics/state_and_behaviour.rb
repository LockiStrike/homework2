# frozen_string_literal: true

# exercise state and behaviour
module StateAndBehaviour
  # class to feel yourself real driver
  class Car
    attr_reader :color, :model, :current_speed, :year

    DEFAULT_COLOR = 'purple'
    DEFAULT_MODEL = 'skyline'
    DEFAULT_YEAR = 2015
    DEFAULT_SPEED = 0

    def self.default_car
      new({})
    end

    def initialize(args)
      raise ArgumentError unless args.instance_of? Hash
      self.color = args.fetch('color', DEFAULT_COLOR)
      self.model = args.fetch('model', DEFAULT_MODEL)
      self.year = args.fetch('year', DEFAULT_YEAR)
      self.current_speed = DEFAULT_SPEED
    end

    def speed_up(increase_amount)
      self.current_speed = increase_amount unless increase_amount.nil?
    end

    def push_break(decrease_amount)
      self.current_speed -= decrease_amount if decrease_amount <= current_speed
    end

    private

    attr_writer :color, :model, :current_speed, :year
  end
end
