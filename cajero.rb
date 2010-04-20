#!/usr/bin/ruby

class Cajero
  def initialize(saldo = 0, titulares = "Anónimo")
    @saldo = saldo
    @movimientos = []
    @titulares= titulares
    bienvenida
  end

  def bienvenida
    if @titulares.respond_to? :join
      puts "Bienvenidos #{@titulares.join(', ')}"
    else
      puts "Bienvenido #{@titulares}"
    end
  end

  def ingresar(ingreso)
    if ingreso > 0
      @saldo += ingreso
      @movimientos << ingreso
      puts "Tu saldo es de: #{@saldo} euros"
    else
      puts "No puedes ingresar una cantidad negativa"
    end
  end

  def sacar(reintegro)
    if numeros_rojos?
      puts "Estas en numeros rojos"
    else
      if reintegro > 0
        @saldo -= reintegro
        @movimientos << -reintegro
        puts "Toma tus #{reintegro} euros"
      else
        puts "No puedes sacar una cantidad negativa"
      end
    end
  end

  def movimientos
    puts ">> Movimientos de la cuenta"
    @movimientos.each do |mov|
      mov > 0 ? (puts "Ingreso: #{mov} euros") : (puts "Retirado: #{mov.abs} euros")
    end
    puts "Saldo total: #{@saldo} euros"
  end

  attr_accessor :saldo

  private
  def numeros_rojos?
    @saldo < 0
  end

end

# Ejecucion de la clase
c = Cajero.new
c.ingresar 10
c.ingresar 10000
c.ingresar 5

c.sacar 10
c.sacar 10
c.movimientos

c.ingresar(-10)
c.sacar(-50)

c2 = Cajero.new(10, ["Luis", "Pablo", "Ana"])
