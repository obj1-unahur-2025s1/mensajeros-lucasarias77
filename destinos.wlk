import mensajeros.*


object puenteDeBrooklyn {
    method dejarPasar(alguien) = alguien.peso() <= 1000
}

object matrix {
    method dejarPasar(alguien) = alguien.puedeLlamar()
}


// Paquetes
object paquete {
    
    var destino = puenteDeBrooklyn 

    var pagado = true

    method sePuedeEntregar(unMensajero) = 
        self.estaPago() && destino.dejarPasar(unMensajero)
    
    method estaPago() = pagado

    method destino(nuevo){
        destino = nuevo
    }
}



