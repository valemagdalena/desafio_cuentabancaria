class CuentaBancaria
    attr_accessor :nombre_de_usuario, :numero_de_cuenta, :tipo
    def initialize(nombre_de_usuario, numero_de_cuenta, tipo = 0)
        raise ArgumentError , "El número de cuenta debe ser de 8 caracteres en total" if numero_de_cuenta.digits.count != 8
        raise ArgumentError , "Si su cuenta es VIP, ingrese 1" if tipo != 0 && tipo != 1
        @nombre_de_usuario = nombre_de_usuario
        @numero_de_cuenta = numero_de_cuenta
        @tipo = tipo
    end

    def numero_de_cuenta1
        "El numero de cuenta de #{nombre_de_usuario} es #{tipo}-#{numero_de_cuenta}"
    end
end

p1 = CuentaBancaria.new('Valentina', 12345678, 1)
puts p1.numero_de_cuenta1

