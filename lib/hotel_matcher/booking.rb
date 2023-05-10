# frozen_string_literal: true

module HotelMatcher
  class Booking < HotelMatcher::Base
    BASE_URL = "https://www.booking.com"

    def perform
      mechanize.get(BASE_URL) do |page|
        form = page.forms.first
        form.ss = query_text
        search_result = form.submit

        @hotel_url = search_result.search("[data-testid=\"title-link\"]").first.attr("href")
      end

      self
    end
  end
end
