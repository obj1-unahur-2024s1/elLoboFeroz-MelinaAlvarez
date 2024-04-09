object feroz{
	var peso = 10
	
	method estaSaludable(){
		return peso.between(20,150)
	}
	
	method sufrirCrisis(){
		peso = 10
	}
	
	method comer(cosa){
		peso = (cosa.peso()/10) + peso	
	}
	
	method correr(){
		peso = 0.max(peso-1)
	}
	
	method soplarCasa(casa){
		peso = 0.max(peso-(casa.resistencia()+casa.cantidadDeOcupantes()*chanchito.peso()))
	}
}

object caperucita{
	method peso() = 60 + canasta.peso()
}

object abuelita{
	method peso() = 50
}

object canasta{
	var manzanas = 6
	
	method quitarManzana(){
		manzanas = manzanas-1
	}
	
	method peso() = manzanas*0.2
}

object cazador{
	var peso = 80
	
	method peso() = peso
	
	method asustarAlLobo(){
		feroz.sufrirCrisis()
	}
	
	method perseguirAlLobo(){
		peso = 0.max(peso-5)
	}
}

object chanchito{
	method peso() = 10
}

object casaDePaja{
	var ocupantes = 0
	
	method agregarOcupante(){
		ocupantes = ocupantes + 1
	}
	
	method quitarOcupante(){
		ocupantes = 0.max(ocupantes-1)
	}
	
	method cantidadDeOcupantes() = ocupantes
	
	method resistencia() = 0
}

object casaDeMadera{
	var ocupantes = 0
	
	method agregarOcupante(){
		ocupantes = ocupantes + 1
	}
	method quitarOcupante(){
		ocupantes = 0.max(ocupantes-1)
	}
	
	method cantidadDeOcupantes() = ocupantes
	
	method resistencia() = 5
}

object casaDeLadrillos{
	var cantidadDeLadrillos = 0
	var ocupantes = 0
	
	method agregarOcupante(){
		ocupantes = ocupantes + 1
	}
	method quitarOcupante(){
		ocupantes = 0.max(ocupantes-1)
	}
	
	method cantidadDeOcupantes() = ocupantes
	
	method cambiarCantidadDeLadrillos(nuevo){
		cantidadDeLadrillos = nuevo
	} 
	
	method cantidadDeLadrillos() = cantidadDeLadrillos
	
	method resistencia() = 2*cantidadDeLadrillos
}