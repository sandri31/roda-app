# frozen_string_literal: true

class App
  hash_branch 'first-route' do |r|
    r.on 'hello' do
      r.get do
        @title = 'Hello World'
        view 'index'
      end
    end
  end
end
