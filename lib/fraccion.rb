class Fraccion
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
	def *(value)
		Fraccion.new(@n * value, @d)
	end
end

