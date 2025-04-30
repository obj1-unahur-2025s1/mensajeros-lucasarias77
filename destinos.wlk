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
    method precio() = 100
}

object paquetito {
  method puedeSerEntragado(alguien) = true
  method estaPago() = true
  method precio() = 0
}

object paqueton {
  const destinos = [matrix,puenteDeBrooklyn]
  var pagado = 0
  method puedeSerEntragado(alguien) = self.estaPago() && self.pasaPorTodos(alguien)
  method pasaPorTodos(mensajero) = destinos.all({d => d.dejaPasar(mensajero)})
  method estaPago() = pagado >= self.precio()
  method precio() = destinos.size() * 100
  method pagar(importe){
    pagado = pagado + importe
  }

}


