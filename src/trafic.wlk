import dependencia.*

object trafic {
	var motor
	var interior
	
	method capacidad() {
		return interior.capacidad()
	}
	method motor() {
		return motor
	}
	method velocidadMaxima() {
		return motor.velocidadMaxima()
	}
	method peso() {
		return interior.peso() + motor.peso() + 4000
	}
	method color() {
		return "Blanco"
	}
	method setInterior(unInterior) {
		interior = unInterior
	}
	method setMotor(unMotor) {
		motor = unMotor
	}
}

