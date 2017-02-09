require 'rack/test'
require 'test/unit'

class BlocWorks < Test::Unit::TestCase
  include Rack::Test::Methods

  def app
    BlocWorks.new
  end

  def test_root
    get '/'
    assert last_response.ok?
    assert_equal(200, last_response.status)
  end

  def test_it_says_hello
    get '/'
    assert_equal("Hello Blocheads!", last_response.body)
  end
end