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
	var property puedeLlamar = true
}

object neo {
  var property puedeLlamar = true

}

object saraConnor {
  var property puedeLlamar = false
  var vehiculo = camion
  var peso = 0
  method peso() {
    return peso + vehiculo.peso()
  }
  method cambiarPeso(_peso) {
	  peso = _peso
  }
  method cambiarVehiculo(_vehiculo) {
	  vehiculo = _vehiculo
  }
}

object moto {
  var property peso = 70

}

object camion {
  const peso = 500
  var property cantAcoplados = 0
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