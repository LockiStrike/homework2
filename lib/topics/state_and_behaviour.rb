# frozen_string_literal: true

# exercise state and behaviour
module StateAndBehaviour
  # class
  class Car
    attr_accessor :color, :model, :current_speed, :sets, :year

    def self.default_car
      Car.new {}
    end

    def initialize(args)
      raise ArgumentError if args.class != Hash
      if args.empty?
        set_deafult_args
      else
        args.each do |key, value|
          instance_variable_set("@#{key}", value) unless value.nil?
        end
      end
      self.current_speed = 15
    end

    def speed_up(value)
      self.current_speed = value unless value.nil?
    end

    def push_break(value)
      self.current_speed = current_speed - value if value <= current_speed
    end

    private

    def set_deafult_args
      self.sets = 4
      self.color = 'green'
      self.model = 'Zaporojec'
      self.year = 3222
    end
  end
end
