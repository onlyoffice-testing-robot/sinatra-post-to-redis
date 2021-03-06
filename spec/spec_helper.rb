# frozen_string_literal: true

require 'simplecov'
SimpleCov.start do
  enable_coverage :branch
end

require 'rack/test'
require 'rspec'
require_relative '../app'

ENV['RACK_ENV'] = 'test'

# Module to setup rack test in sinatra
module RSpecMixin
  include Rack::Test::Methods

  # @return [Sinatra::Application] this application
  def app
    Sinatra::Application
  end
end

RSpec.configure { |c| c.include RSpecMixin }
