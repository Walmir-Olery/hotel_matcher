# frozen_string_literal: true

require_relative "lib/hotel_matcher/version"

Gem::Specification.new do |spec|
  spec.name = "hotel_matcher"
  spec.version = HotelMatcher::VERSION
  spec.authors = ["Walmir Neto"]
  spec.email = ["owalmirneto@gmail.com"]

  spec.summary = "Hotel matcher is a skill test for a position on Olery"
  spec.homepage = "http://github.com/owalmirneto/hotel_matcher"
  spec.required_ruby_version = ">= 2.7"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = spec.homepage

  spec.files = Dir.chdir(__dir__) do
    `git ls-files -z`.split("\x0").reject do |f|
      (File.expand_path(f) == __FILE__) || f.start_with?(*%w[bin/ test/ spec/ features/ .git .circleci appveyor])
    end
  end
  spec.bindir = "exe"
  spec.executables = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.metadata["rubygems_mfa_required"] = "true"

  spec.add_dependency "mechanize"
end
