class Cartas
    attr_accessor :numero, :pinta
    def initialize(numero, pinta)
        @numero = numero
        @pinta = pinta
    end
end

array = []

5.times do |i|
    array.push Cartas.new(Random.rand(1..13), ['C', 'D', 'E', 'T'].sample)
end

print array

