import elementos.*
class Cucarachas {
	var property poblacion
	var property peso 
	
	method nivelDeDanio() {
		return poblacion / 2
	}
	
	method transmiteEnfermedad() {
		 return poblacion >= 10 and peso >= 10 
	}
	
	method efectoDeAtaque(elemento) {
		elemento.recibirAtaque(self) 
			
		
		poblacion  += poblacion * 0.1  
		peso +=  2
	}
	
}



class Pulgas {
	var property poblacion

	method nivelDeDanio() {
		return poblacion * 2	
	}
	
	method transmiteEnfermedad() {
		return poblacion >= 10
	}
	method efectoDeAtaque(elemento) {
		elemento.recibirAtaque(self) 
		
		poblacion  += poblacion * 0.1  
		
		}
	
	
	
}



class Garrapatas inherits Pulgas {
	
	override method efectoDeAtaque(elemento) {
		elemento.recibirAtaque(self) 
		
		poblacion  += poblacion * 0.2  
}
}


class Mosquitos {
	var property poblacion

	method nivelDeDanio() {
		return poblacion
		
	}
	
	method transmiteEnfermedad() {
		return poblacion >= 10 and   poblacion % 3 == 0 
	}
	
	method efectoDeAtaque(elemento) {
		elemento.recibirAtaque(self) 
		poblacion  += poblacion * 0.1  
	}
}

 
