import mensajeros.*


object puenteDeBrooklyn {
    method puedePasar(unMensajero) = unMensajero.peso() <= 1000
}

object matrix {
    method puedePasar(unMensajero) = unMensajero.puedeLlamar()
}


// Paquetes
object paquete {
    var pagado = 0
    
    method pagar(unaCantidad) {
        pagado = pagado + unaCantidad
    }

    method estaPago() = pagado >= 50

    method sePuedeEntregar(unMensajero, unLugar) = 
        self.estaPago() && unLugar.puedePasar(unMensajero)
}

