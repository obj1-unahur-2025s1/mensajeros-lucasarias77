import mensajeros.*
import destinos.*

object empresa {
  const mensajeros = []

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
}


//Consultar si el paquete puede ser entregado por el primer empleado de la la empresa de mensajería.
