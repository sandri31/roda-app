# frozen_string_literal: true

# Development mode
dev = ENV['RACK_ENV'] == 'development'

# Load automatically all files from the app folder
require 'rack/unreloader'
Unreloader = Rack::Unreloader.new(subclasses: %w[Roda], reload: dev) { App }

# Load file app.rb
Unreloader.require('app.rb') { 'App' }

# Run the app with Rack
run(dev ? Unreloader : App.freeze.app)
