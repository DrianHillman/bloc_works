require "bloc_works/version"
require "bloc_works/controller"

module BlocWorks
  class Application
    def call(env)
      [200, {'Content-Type' => 'text/html'}, ["Hello Blocheads!"]]
    end
  end
end
