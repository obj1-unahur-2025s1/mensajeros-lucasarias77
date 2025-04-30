import mensajeros.*
import destinos.*

object empresa {
  const mensajeros = [neo,roberto,chuckNorris]
  const enviados = []
  const pendientes = []

  method despedir(alguien){
    mensajeros.remove(alguien)
  }

  method contratar(empleado){
    mensajeros.add(empleado)
  }

  method despedirATodos(){
    mensajeros.clear()
  }

  method esGrande(){
    return mensajeros.size() > 2 
  }

  method entregaRapida(){
    return paquete.sePuedeEntregar(mensajeros.head())
  }

  method pesoDelUltimoEmpleado(){
    return mensajeros.last().peso()
  }

 
// tercera parte

  method puedeEntregar(unPaquete) =
    mensajeros.any({m => unPaquete.puedeSerEntragado(m)})

    method quienesPuedenEntregar(unPaquete) =
    mensajeros.filter({m => unPaquete.puedeSerEntragado(m)})
  
    method tieneSobrepeso() = self.pesoTotal() / self.cantidadMensajeros() > 500

    method cantidadMensajeros() = mensajeros.size()

    method pesoTotal() = mensajeros.sum({m => m.peso()}) 

    method facturacion() = enviados.sum{p => p.precio()}

    method enviar(unPaquete){
      if(self.puedeEntregar(unPaquete)){
        enviados.add(unPaquete)
      }
      else{
        pendientes.add(unPaquete)
      }
    }



    method enviarTodos(paquetesAEnviar){
      paquetesAEnviar.forEach{p => self.enviar(p)}
    }

    method reenviarPendienteCaro(){
      const caro = self.pendienteCaro()
      pendientes.remove(caro)
      self.enviar(caro)
    }

    method pendienteCaro() = pendientes.max{p => p.precio()}

}


//Consultar si el paquete puede ser entregado por el primer empleado de la la empresa de mensajería.

// tercera parte


