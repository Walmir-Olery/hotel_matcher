# frozen_string_literal: true

RSpec.describe HotelMatcher do
  it "has a version number" do
    expect(HotelMatcher::VERSION).not_to be_nil
  end

  it "match gem version" do
    expect(HotelMatcher::VERSION).to eq("0.1.0")
  end
end
