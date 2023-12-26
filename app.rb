# frozen_string_literal: true

require 'roda'
require 'tilt/sass'

class App < Roda
  plugin :render, escape: true
  plugin :hash_routes

  Unreloader.require('routes') {}

  route do |r|
    r.hash_routes('')
  end
end
