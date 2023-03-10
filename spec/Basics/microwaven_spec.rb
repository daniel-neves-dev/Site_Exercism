require_relative "../../lib/Basics/class_microwaven"

RSpec.describe Basics::Microwave do
  context "Microwave display" do
    it "one second" do
      time = Basics::Microwave.new(1).buttons_display_timer
      expect(time).to eq("00:01")
    end

    it "fifty nine seconds" do
      time = Basics::Microwave.new(59).buttons_display_timer
      expect(time).to eq("00:59")
    end

    it "sixty seconds" do
      time = Basics::Microwave.new(60).buttons_display_timer
      expect(time).to eq("01:00")
    end

    it "one minute" do
      time = Basics::Microwave.new(100).buttons_display_timer
      expect(time).to eq("01:00")
    end

    it "ninety seconds" do
      time = Basics::Microwave.new(90).buttons_display_timer
      expect(time).to eq("01:30")
    end

    it "over ten minutes" do
      time = Basics::Microwave.new(1001).buttons_display_timer
      expect(time).to eq("10:01")
    end

    it "minutes over flow" do
      time = Basics::Microwave.new(272).buttons_display_timer
      expect(time).to eq("03:12")
    end
  end
end