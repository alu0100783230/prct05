require './lib/fraccion.rb'
require 'test/unit'

class TestFraccion < Test::Unit::TestCase
	def setup
 		@uno = Fraccion.new(1,1)
	end
	def test
		assert_equal("(1,1)", @uno.to_s)
	end
end