module Basics
  class Microwave

    def initialize(buttons)
      @buttons = buttons
    end

    def buttons_display_timer
      minutes, seconds = @buttons.divmod(100) #splitting concatenated time in display
      extra_minutes, seconds = seconds.divmod(60)
      minutes += extra_minutes
      "%02d:%02d" %[minutes,seconds]
    end
  end
end