import mensajeros.*
import destinos.*

object mensajeria {
  var mensajeros = [roberto,chuckNorris,neo]
  method despedirMensajero(unMensajero){
    mensajeros.remove(unMensajero)
  }

  method contratarMensajero(unMensajero){
    mensajeros.add(unMensajero)
  }

  method despedirATodos(){
    mensajeros.removeAll(mensajeros)
  }

  method tamañoMensajeria(){
    return mensajeros.size() > 2 
  }

  method puedeSerEntragadoA(unLugar){
    return paquete.sePuedeEntregar(mensajeros.first(),unLugar)
  }

  method pesoDelUltimoEmpleado(){
    return mensajeros.last().peso()
  }
}


//Consultar si el paquete puede ser entregado por el primer empleado de la la empresa de mensajería.
