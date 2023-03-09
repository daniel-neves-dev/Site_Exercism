require_relative "../../lib/Basics/class_lasagna"

RSpec.describe Basic::Lasagna do
  context "Time in oven to cook" do

    it "remind minutes in the oven" do
      remind = Basic::Lasagna.new.remaining_minutes_in_oven(30)
      expect(remind).to eq(10)
    end

    it "over cooked" do
      remind = Basic::Lasagna.new.remaining_minutes_in_oven(45)
      expect(remind).to eq("It is over cooked")
    end
    it "time to cook the lasagna layers" do
      layers = Basic::Lasagna.new.preparation_time_in_minutes(2)
      expect(layers).to eq(4)
    end

    it "total minutes cooking in the oven" do
      total_minutes = Basic::Lasagna.new.total_time_in_minutes(3,20)
      expect(total_minutes).to eq(26)
    end
  end
end