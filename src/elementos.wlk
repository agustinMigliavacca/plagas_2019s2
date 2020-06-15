import plagas.*
class Hogar {
	
	var property nivelDeMugre
	var property confort
	
	method esBuenoParaLaVida() {
		return nivelDeMugre <= confort / 2 
		
	}	

	method recibirAtaque(plaga) {
		nivelDeMugre = plaga.nivelDeDanio() 

	}
	
	
	
}	
class Huerta  {
	var property capacidadDeProduccion
	var property nivel
	
	method esBuenoParaLaVida() {
		return capacidadDeProduccion >  nivel
	}		
	
	method recibirAtaque(plaga) {
		capacidadDeProduccion  -= plaga.nivelDeDanio() * 0.1
		if(plaga.transmiteEnfermedad()){
			capacidadDeProduccion -= 10
	}
	}

	


}	

class Mascota {
	var property nivelDeSalud
	
	method esBuenoParaLaVida() {
		return nivelDeSalud > 250
	}
	
	method recibirAtaque(plaga) {
		if(plaga.transmiteEnfermedad()) {
			nivelDeSalud = plaga.nivelDeDanio()
		
	}	
	
	
	}	
	
	
}
	
	




