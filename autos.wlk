object ferrari {
    var motor = 87

    method motor() = motor

    method enCondiciones(){
        return motor >= 65
    }

    method reparar(){
        motor = 100
    }

    method velocidadMaxima(){
        var velocidadMaxima = 110
        if(motor > 75){
            velocidadMaxima += 15
        }
        return velocidadMaxima
    }

    method hacerPrueba(){
        motor = (motor - 30).max(0)
    }
}

object flechaRubi {
    var nivelDeCombustible = 100
    var property tipoDeCombustible = gasolina // property genera metodos getter y setter
    var color = azul

    method color() = color
    
    method nivelDeCombustible() = nivelDeCombustible

    method enCondiciones(){
        return nivelDeCombustible > tipoDeCombustible.nivelMinimo() && color == rojo
    }

    method reparar(){
        nivelDeCombustible = nivelDeCombustible * 2
        color = color.cambiarColor()
    }

    method hacerPrueba(){
        nivelDeCombustible = (nivelDeCombustible - 5).max(0)
    }

    method velocidadMaxima(){
        return nivelDeCombustible * 2 + tipoDeCombustible.calculoAdicional(nivelDeCombustible)
        
    }
}

object gasolina {
    method nivelMinimo() = 85
    method calculoAdicional(nivelDeCombustible) = 10 
}

object nafta {
    method nivelMinimo() = 50
    method calculoAdicional(nivelDeCombustible) = -1 * ((nivelDeCombustible * 2) * 0.1)
}

object nitrogeno {
    method nivelMinimo() = 0
    method calculoAdicional(nivelDeCombustible) = (nivelDeCombustible * 2) * 10
}

object azul {
    method cambiarColor() = verde
}

object verde {
    method cambiarColor() = rojo
}

object rojo {
    method cambiarColor() = azul
}

object intocable {
    var property enCondiciones = true
    method hacerPrueba(){
        enCondiciones = false
    }
    method reparar(){
        enCondiciones = true
    }
    method velocidadMaxima() = 45
}

object camaro {
    var cantidadDeRuedas = 4
    var tieneCanioDeEscape = true

    method cantidadDeRuedas() = cantidadDeRuedas

    method enCondiciones(){
        return cantidadDeRuedas == 4 && tieneCanioDeEscape
    }

    method hacerPrueba(){
        cantidadDeRuedas -= 1
        tieneCanioDeEscape = false
    }

    method reparar(){
        cantidadDeRuedas = 4
        tieneCanioDeEscape = true
    }

    method velocidadMaxima(){
        return 30 * cantidadDeRuedas
    }
}