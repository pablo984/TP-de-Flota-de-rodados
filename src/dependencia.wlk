import rodados.*
import trafic.*

class Dependencia {
	const flota = []
	var empleados
	
	method empleados() {
		return empleados
	}
	method setEmpleados(cuantos) {
		empleados = cuantos
	}
	method agregarFlota(rodado) {
		flota.add(rodado)
	}
	method quitarDeFlota(rodado) {
		flota.remove(rodado)
	}
	method pesoTotalFlota() {
		return flota.sum({ rod => rod.peso() })
	}
	method estaBienEquipada() {
		return flota.size() >= 3 and 
				 flota.all({ rod => rod.velocidadMaxima() >= 100 }) 
	}
	method capacidadTotalEnColor(color) {
		return flota.filter({ rod => rod.color() == color }).sum({ rod => rod.capacidad() })
	}
	method colorDelRodadoMasRapido() {
		return flota.max({ rod => rod.velocidadMaxima() }).color()
	}
	method capacidadFaltante() {
		return 0.max(self.empleados() - flota.sum({ rod => rod.capacidad() }))
	}
	method esGrande() {
		return self.empleados() >= 40 and flota.size() >= 5
	}
}

object interiorComodo {
	method capacidad() {
		return 5
	}
	method peso() {
		return 700
	}
}

object interiorPopular {
	method capacidad() {
		return 12
	}
	method peso(){
		return 1000
	}
}

object motorPulenta {
	method peso() {
		return 800
	}
	method velocidadMaxima() {
		return 130
	}
}
object motorBataton {
	method peso() {
		return 500
	}	
	method velocidadMaxima() {
		return 80
	}
}







