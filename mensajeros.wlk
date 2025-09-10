object mensajeria {
  

	method puedeEnviarElPaquete(destino, paquete, empleado) {
		return destino.puedeTransportar(empleado) && paquete.estaPago()
	}

}

object paquete {
  var property estaPago = true 
}



object puenteBrooklyn {
  method puedeTransportar(empleado) {
	  return empleado.peso() <= 1000
  }
}

object laMatrix {
  method puedeTransportar(empleado) {
	  return empleado.puedeLlamar()
  }
}

object jeanGray {
	var property peso = 65
	const puedeLlamar = true
  method puedeLlamar() {
    return puedeLlamar
  }
}

object neo {
  var property puedeLlamar = true
  const peso = 0
  method peso() {
    return peso
  }
}

object saraConnor {
  const puedeLlamar = false
  var vehiculo = camion
  var pesoPropio = 0
  method puedeLlamar() {
    return puedeLlamar
  }
  method peso() {
    return pesoPropio + vehiculo.peso()
  }
  method cambiarPeso(_peso) {
	  pesoPropio = _peso
  }
  method cambiarVehiculo(_vehiculo) {
	  vehiculo = _vehiculo
  }
}

object moto {
  const peso = 100
  method peso() {
    return peso
  }
}

object camion {
  const peso = 500
  var cantAcoplados = 0
  method agregarAcoplado(cantidad) {
	  cantAcoplados = cantAcoplados + cantidad
  }
  method quitarAcoplados(cantidad) {
	  cantAcoplados = cantAcoplados - cantidad
  }
  method peso() {
	  return peso + (cantAcoplados * 500)
  } 

}