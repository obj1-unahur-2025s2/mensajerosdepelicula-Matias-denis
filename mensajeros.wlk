import vehiculos.*
import destinos.*

object roberto {
  var vehiculo = bicicleta

  method cambiarVehiculo(unVehiculo) {vehiculo = unVehiculo}
  method peso() {
    return 90 + vehiculo.peso()
  }
  method puedeEntregar(unPaquete) = unPaquete.estaPago()
  method puedeLlamar() {
    return false  
  }
}

object chuckNorris {
  method peso() {
    return 80
  }
  method puedeLlamar() {
    return true
  }
}

object neo {
  var tieneCredito = true

  method cargarCredito() {tieneCredito = true}
  method agotarCredito() {tieneCredito = false} 
  method peso() {
    return 0
  }
  method puedeLlamar() {
    return tieneCredito
  }
  method puedeEntregar(unPaquete) = unPaquete.estaPago()

}