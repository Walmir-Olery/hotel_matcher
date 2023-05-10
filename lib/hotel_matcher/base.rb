# frozen_string_literal: true

module HotelMatcher
  class Base
    attr_reader :hotel_url

    def self.call(args)
      new(*args).perform
    end

    def initialize(query_text)
      @query_text = query_text.gsub(" ",  "+")
    end

    def perform
      raise NotImplementedError, "perform method is not implemented"
    end

    private

    attr_reader :query_text

    def mechanize
      @mechanize ||= Mechanize.new { |agent| agent.user_agent_alias = "Mac Safari" }
    end
  end
end
