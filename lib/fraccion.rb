class Fraccion
	attr_reader :n, :d
	def initialize(n, d)
		raise RuntimeError, 'El numerador debe ser un numero' unless n.is_a? Numeric
		raise RuntimeError, 'El denominador debe ser un numero' unless d.is_a? Numeric
		raise RuntimeError, 'El denominador debe ser distinto a 0' unless d != 0
		@n = n
		@d = d
	end
	def to_s
		"#{@n}/#{@d}"
	end
	def *(fraccion)
		Fraccion.new(@n * fraccion.n, @d * fraccion.d)
	end
	def /(fraccion)
		Fraccion.new(@n * fraccion.d, @d * fraccion.n)
	end
	def +(fraccion)
		h = @d * fraccion.d
		a = @d * fraccion.n
		b = fraccion.d * @n
		Fraccion.new(a+b,h)
	end
	def -(fraccion)
		h = @d * fraccion.d
		a = @d * fraccion.n
		b = fraccion.d * @n
		Fraccion.new(a-b,h)
	end
end

