
class Glaciar{
	var desembocadura
	var masa
	var pesoTotal
	const temperatura = 1
	
	constructor(_desembocadura,_masa,_pesoTotal){
		desembocadura = _desembocadura
		masa = _masa
		pesoTotal = _pesoTotal
	}
	
	
	method aumentarMasa(_masa){masa = masa + _masa}
	method masa()=masa
	method peso()=pesoTotal
	method disminuirMasa(_masa){masa = masa - _masa}
	
	method temperatura()=temperatura
	
	method pesoInicial()=pesoTotal / 1000 * desembocadura.temperatura()
	
	method caerPorDesembocadura(tempano)= desembocadura.nuevoTempano(tempano)
	
	method nuevoTempano(tempano){ self.aumentarMasa(tempano.peso())}
	
	method desprendemiento(){		
		
	 new Tempano(self.pesoInicial(),compacto)
	 self.caerPorDesembocadura(new Tempano(self.pesoInicial(),compacto))
	 self.disminuirMasa(self.pesoInicial())
	 }
}

class Tempano {
	var tipo
	var peso
	constructor(_pesoTotal,_tipo){
		peso = _pesoTotal		
		tipo = _tipo
	}
	
	method peso()=peso
	method cuantoEnfria()=tipo.cuantoEnfria(self)
	method seVeAzul()=tipo.esAzul(self)
}

object compacto{
	method cuantoEnfria(tempano)= tempano.peso() / 100
	method esAzul(tempano)= tempano.peso()*0.15 > 100
}

object aireado{
	method cuantoEnfria(tempano)=0.5
	method esAzul(tempano)=false
}





class MasaDeAgua{
	var tempanosFlotando = []
	var temperaturaAmbiente 
	
	constructor(listaDeTempanos){
		listaDeTempanos.map{tempano => self.nuevoTempano(tempano)}
		temperaturaAmbiente = 10
	}
	
	method nuevoTempano(tempano)=tempanosFlotando.add(tempano)
	
	method esAtractiva() = tempanosFlotando.size() > 5 && tempanosFlotando.all{tempano => tempano.seVeAzul() or tempano.peso() > 500}
	method temperatura() = temperaturaAmbiente - tempanosFlotando.sum{tempano => tempano.cuantoEnfria()}
}

class Rio inherits MasaDeAgua{
	var velocidadBase
	
	constructor(_velocidad,listaDeTempanos)=super(listaDeTempanos){
		
		velocidadBase = _velocidad
	}
	
	method tempanosGrandes() = tempanosFlotando.filter{tempano => tempano.peso() > 500}
	method velocidadDeAgua() = velocidadBase - self.tempanosGrandes().size()
	
	override method temperatura()= temperaturaAmbiente - tempanosFlotando.sum{tempano => tempano.cuantoEnfria()} + self.velocidadDeAgua() 
	
	
}

