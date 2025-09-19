import mensajeros.*
import destinos.*

object paquete {
    var destino = matrix
  var estaPago = false

    method cambiarDestino(nuevoDestino){
        destino = nuevoDestino
    }
  method estaPago() {
    return estaPago
  }
  method registrarPago() {
    estaPago = true
  }
  method puedeSerEntregado(unMensajero) {
    return destino.puedePasar(unMensajero) && estaPago
  }

  method precio() {
    return 50
  }
  

}

object paquetito {
    var destino = matrix
    method estaPago() {return true}

    method cambiarDestino(unDestino){
        destino = unDestino
    }

    method precio() { return 0}

    method puedeSerEntregado(unMensajero) {
        return true
    }


}

object paqueton {
    var importePagado = 0
    const destinos = []
    method precio() {
       return destinos.size() * 100
    }
    method recibirPago(unValor) {
        importePagado = (importePagado + unValor).min(self.precio())
    }

    method agregarDestino(unDestino) {
        destinos.add(unDestino)
    }
    method estaPago() {
        return importePagado == self.precio()
    }
    method puedeSerEntregado(unMensajero) {
        return destinos.all({cadaDestinoDeLaLista => cadaDestinoDeLaLista.puedePasar(unMensajero)})
        && self.estaPago()
    }
}