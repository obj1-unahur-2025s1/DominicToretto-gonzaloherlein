import autos.*

object dominic {
    const autos = []

    method comprarAuto(unAuto){
        autos.add(unAuto)
    }

    method autosNoEnCondiciones(){
        return autos.filter({
            auto => !auto.enCondiciones()
        })
    }

    method autosEnCondiciones(){
        return autos.filter({
            auto => auto.enCondiciones()
        })
    }

    method mandarAutosAlTaller(){
        taller.recibirAutos(self.autosNoEnCondiciones())
    }

    method hacerPruebaDeVelocidad(){
        autos.forEach({
            auto => auto.hacerPrueba()
        })
    }

    method venderAutos(){
        autos.clear()
    }

    method promedioDeVelocidades(){
        return autos.sum({
            auto => auto.velocidadMaxima()
        }) / autos.size()
    }

    method autoMasRapidoEnCondiciones(){
        return self.autosEnCondiciones().max({
            auto => auto.velocidadMaxima()
        })
    }

    method hayUnAutoMuyRapido(){
        return self.autoMasRapidoEnCondiciones().velocidadMaxima() > 2 * self.promedioDeVelocidades()
    }
}

object taller {
    const autosAReparar = []

    method recibirAutos(listaDeAutos){
        autosAReparar.addAll(listaDeAutos)
    }

    method repararTodosLosAutos(){
        autosAReparar.forEach({
            auto => auto.reparar()
        })
        autosAReparar.clear()
    }
}