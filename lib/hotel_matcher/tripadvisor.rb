# frozen_string_literal: true

module HotelMatcher
  class Tripadvisor < HotelMatcher::Base
    BASE_URL = "https://www.tripadvisor.com"

    def perform
      mechanize.get(BASE_URL) do |page|
        search_result = page.form_with(action: "/Search") do |search|
          search.q = query_text
        end.submit

        hotel_path = search_result.search(".result-title").first&.attr("onclick")

        @hotel_url = "#{BASE_URL}/#{hotel_path}"
      end

      self
    end
  end
end
