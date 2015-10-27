require './lib/fraccion.rb'
require 'test/unit'

class TestFraccion < Test::Unit::TestCase
	def setup
 		@uno = Fraccion.new(1,1)
 		@dostercios = Fraccion.new(2,3)
 		@tresquintos = Fraccion.new(3,5)
	end
	def test
		assert_equal("1/1", @uno.to_s)
		assert_equal("6/15", (@dostercios*@tresquintos).to_s)
		assert_equal("10/9", (@dostercios/@tresquintos).to_s)
		assert_equal("19/15", (@dostercios+@tresquintos).to_s)
	end
end