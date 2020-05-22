class ChevroletCorsa {
	var color
	
	method capacidad() {
		return 4
	}
	method velocidadMaxima() {
		return 150
	}
	method peso() {
		return 1300
	}
	method color() {
		return color
	}
	method setColor(unColor) {
		color = unColor
	}	
}

class RenaultKwid {
	var tanqueAdicional = true
	
	method capacidad() {
		if (not tanqueAdicional) {
			return 4
		}
		else {
			return 3
		}
	}
	method velocidadMaxima() {
		if (not tanqueAdicional) {
			return 110
		}
		else {
			return 120
		}
	}
	method peso() {
		if (not tanqueAdicional) {
			return 1200
		}
		else {
			return 1350
		}
	}
	method color() {
		return "Azul"
	}
	method setTanque() {
		tanqueAdicional = !tanqueAdicional
	}
	method tieneTanqueAdicional() {
		return tanqueAdicional
	}	
}

class AutoEspecial {
	var capacidad
	var velocidad
	var peso
	var color
	
	method capacidad() {
		return capacidad
	}
	method velocidadMaxima() {
		return velocidad
	}
	method peso() {
		return peso
	}
	method color() {
		return color
	}
	method setCapacidad(unNum) {
		capacidad = unNum
	}
	method setVelocidad(unNum) {
		velocidad = unNum
	}
	method setPeso(unPeso) {
		peso = unPeso
	}
	method setColor(unColor) {
		color = unColor
	}
} 