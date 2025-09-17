
import mensajeros.*

object bicicleta {
  method peso() = 5  
}

object camion {
  var cantidadAcoplados = 4

  method agregarAcoplados(cantidad) { cantidadAcoplados = cantidad }
  method peso() = cantidadAcoplados * 500
}

object paquete {
  const estaPago = true

  method estaPago() = estaPago
}

object puenteBrooklyn {
  method puedePasar(unMensajero) = unMensajero.peso() <= 1000
}

object matrix {
  method puedePasar(unMensajero) = unMensajero.puedeLlamar()
}