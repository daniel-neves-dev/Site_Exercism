module Basic
  class Lasagna
    EXPECTED_MINUTES_IN_OVEN = 40

    def remaining_minutes_in_oven(actual_minutes_in_oven)
      cooking = EXPECTED_MINUTES_IN_OVEN - actual_minutes_in_oven
      (actual_minutes_in_oven > 40) ? "It is over cooked" : cooking
    end

    def preparation_time_in_minutes(layers)
      layers*2
    end

    def total_time_in_minutes(number_of_layers, actual_minutes_in_oven)
      preparation_time_in_minutes(number_of_layers) + actual_minutes_in_oven
    end
  end
end