# frozen_string_literal: true

require "pry"
require "mechanize"

require_relative "hotel_matcher/version"

require "hotel_matcher/base"
require "hotel_matcher/booking"
require "hotel_matcher/tripadvisor"
require "hotel_matcher/cli"

module HotelMatcher
  class Error < StandardError; end
  # Your code goes here...
end
