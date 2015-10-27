require './lib/fraccion.rb'
require 'test/unit'

class TestFraccion < Test::Unit::TestCase
	def setup
 		@uno = Fraccion.new(1,1)
 		@dostercios = Fraccion.new(2,3)
 		@tresquintos = Fraccion.new(3,5)
	end
	def test_operaciones
		assert_equal("1/1", @uno.to_s)
		assert_equal("6/15", (@dostercios*@tresquintos).to_s)
		assert_equal("10/9", (@dostercios/@tresquintos).to_s)
		assert_equal("19/15", (@dostercios+@tresquintos).to_s)
		assert_equal("-1/15", (@dostercios-@tresquintos).to_s)
		assert_equal("2/18", (@dostercios*Fraccion.new(2,12)).to_s)
	end
	def test_tipo
		assert_raise(RuntimeError) {Fraccion.new('1','1')}
		assert_raise(RuntimeError) {Fraccion.new("hola",'b')}
		assert_raise(RuntimeError) {Fraccion.new(0,'1')}
	end
end