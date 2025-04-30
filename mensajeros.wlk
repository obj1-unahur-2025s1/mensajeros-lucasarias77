import destinos.*


object roberto {
  var vehiculo = bicicleta

  method peso() {
    return 90 + vehiculo.peso()
  }

  method vehiculo(unVehiculo) {
    vehiculo = unVehiculo
  }

  method puedeLlamar() = false
}

object chuckNorris {
  method peso() = 80
  method puedeLlamar() = true
}

object neo {
  var tieneCredito = true

  method peso() = 0

  method puedeLlamar() = tieneCredito

  method cargar() {
    tieneCredito = true
  }

  method gastaCredito(){
    tieneCredito = false
  }
}

// Vehiculos
object bicicleta {
  method peso() = 5
}

object camion {
  var cantidadDeAcoplados = 1

  method peso()  {
    return cantidadDeAcoplados * 500
  }

  method cantidadDeAcoplados(unaCantidad) {
    cantidadDeAcoplados = unaCantidad
  }
}