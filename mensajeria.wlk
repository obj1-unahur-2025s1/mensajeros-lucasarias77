import example.*

object mensajeria {
  var mensajeros = [roberto,chuck,neo]
  method despedirMensajero(unMensajero){
    mensajeros.remove(unMensajero)
  }

  method contratarMensajero(unMensajero){
    mensajeros.add(unMensajero)
  }

  method despedirATodos(){
    mensajeros.removeAll(mensajeros)
  }
}