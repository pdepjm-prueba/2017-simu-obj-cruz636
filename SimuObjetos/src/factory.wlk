import codigo.*

object glaciares{
	var peineta = new Glaciar(100,1000,self.spegazzini())
	var mayoNorte = new Glaciar(70,600,self.spegazzini())
	var spegazzini = new Glaciar(20,100,aguas.lagoArgentino())
	var peritoMoreno = new Glaciar(200,1000,aguas.lagoArgentino())
	
	method peritoMoreno()=peritoMoreno
	method peineta()=peineta
	method mayoNorte()=mayoNorte
	method spegazzini()=spegazzini
}

object aguas{
	var lagoArgentino = new MasaDeAgua([tempanos.tempano1()])
	var rioNegro = new Rio(23,[])
	var lagoNahuel = new MasaDeAgua([tempanos.tempano3(),tempanos.tempano3(),tempanos.tempano3(),tempanos.tempano3(),tempanos.tempano3(),tempanos.tempano3()])
	
	
	method rioNegro()=rioNegro
	method lagoArgentino()=lagoArgentino
	method lagoNahuel()=lagoNahuel
}

object tempanos{
	var tempano1 = new Tempano(20,compacto)
	var tempano2 = new Tempano(600,aireado)
	var tempano3 = new Tempano(501,compacto)
	
	method tempano1()=tempano1
	method tempano2()=tempano2
	method tempano3()=tempano3
}