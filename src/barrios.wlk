import elementos.*
import plagas.*
class Barrios {
	var elementos = []
	method agregar(a) {
		elementos.add(a)
	}
	
	method esBueno() {
		return elementos.filter({c => c.esBuenoParaLaVida()})
	}
	
	method esCopado() {
		return elementos.map({e => e.esBuenoParaLaVida()}).size() >
			   elementos.map({e => not e.esBuenoParaLaVida()}).size()
	}
	
	method nivel(plaga) {
		return plaga.nivelDeDanio()
	}
	
	method transmite(plaga) {
		return plaga.transmiteEnfermedad()
	}
	
		
}
