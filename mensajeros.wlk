import vehiculos.*
object roberto {
  var vehiculo = bicicleta
  var peso = 85

  method cambiarVehiculo(unVehiculo) {vehiculo = unVehiculo}
  method peso(unPeso) {peso = unPeso}
  method peso() =  peso + vehiculo.peso()
  method puedeEntregar(unPaquete) = unPaquete.estaPago()
  method puedeLlamar() = false
}

object chuckNorris {
  method peso() = 80
  method puedeLlamar() = true
}

object neo {
  var tieneCredito = true

  method cargarCredito() {tieneCredito = true}
  method gastarCredito() {tieneCredito = false} 
  method peso() = 0
  method puedeLlamar() = tieneCredito
  method puedeEntregar(unPaquete) = unPaquete.estaPago()

}