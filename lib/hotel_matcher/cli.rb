# frozen_string_literal: true

module HotelMatcher
  class CLI
    def self.call(args)
      new(*args).perform
    end

    def initialize(query_text)
      @query_text = query_text
    end

    def perform
      puts "#{tripadvisor.hotel_url} for tripadvisor.com"
      puts "#{booking.hotel_url} for booking.com"
    end

    private

    attr_reader :query_text

    def tripadvisor
      HotelMatcher::Tripadvisor.call(query_text)
    end

    def booking
      HotelMatcher::Booking.call(query_text)
    end
  end
end
