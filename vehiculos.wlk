import destinos.*
import mensajeros.*

object bicicleta {
  method peso() {return 5}
}

object camion {
  var acoplados = 1

  method cantidadAcoplados(unaCantidad) { acoplados = unaCantidad }
  method peso() {
    return 500 * (acoplados.max(1))
      }
}