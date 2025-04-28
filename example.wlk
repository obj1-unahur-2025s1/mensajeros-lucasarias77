object puente {

  method puedeEntregarPaquete(unMensajero){
    return self.puedePasar(unMensajero) && unMensajero.paqueteEstado()
  }

  method puedePasar(unMensajero){
    if (unMensajero.peso() <= 1000){
      return true
    }
    else {
      return false
    }
  }


}


object matrix {

  
  method puedeEntregarPaquete(unMensajero){
    return self.puedePasar(unMensajero) && unMensajero.paqueteEstado()
  }


  method puedePasar(unMensajero){
    if(unMensajero.puedeLlamar() == true){
      return true
    }
    else{
      return false
    }
  }
}

object roberto {
  var paquetePago = null
  var vehiculo = null
  method paqueteEstado() {return paquetePago}
  method peso() {return 90 + vehiculo.peso()}
  method puedeLlamar() {return false}
  method subirA(unVehiculo){
    vehiculo = unVehiculo
  }

  method paqueteEsPago(estado){paquetePago = estado}
}

object chuck {
  var paquetePago = null
  method paqueteEstado() {return paquetePago}
  method peso() {return 80}
  method puedeLlamar(){return true}
  method paqueteEsPago(estado){paquetePago = estado}
}

object neo {
  var paquetePago = null
  var tieneSaldo = null
  method paqueteEstado() {return paquetePago}
  method peso() {return 0}
  method puedeLlamar(){return tieneSaldo}
  method cambiarSaldo(unSaldo){tieneSaldo = unSaldo}
  method paqueteEsPago(estado){paquetePago = estado}
}

object camion {
  var acoplado = 1
  method peso(){return acoplado * 500}
  method cantAcoplado(unAcoplado){acoplado = unAcoplado}
}

object bici {
  method peso(){return 5}
}