import wollok.game.*

class Corsa {
  var position = new Position(x=4,y=7) // game.at(0,0)
  const pasoPor = []
  method position(nuevaPosicion) {
    
  }

  var property color = "verde"
  method capacidad() = 4
  method velocidadMaxima() = 150
  method peso() = 1300
}

class Kwid {
  var property tieneTanqueAdiccional
  method capacidad() = if(tieneTanqueAdiccional) 3 else 4
  method velocidadMaxima() = if(tieneTanqueAdiccional) 120 else 110
  method peso() = 1200 + if(tieneTanqueAdiccional) 150 else 0
  method color() = "azul"
}

object trafic {
  var property interior = comodo
  var property motor = pulenta
  method capacidad() = interior.capacidad()
  method velocidadMaxima() = motor.velocidad() 
  method peso() = 4000 + interior.peso() + motor.peso()
  method color() = "blanco"
}
object pulenta{
  method peso() = 800
  method velocidad() = 130
}
object bataton{
  method peso() = 500
  method velocidad() = 80
}
object comodo {
  method capacidad() = 5
  method peso() = 700
}

object popular {
  method capacidad() = 12
  method peso() = 1000
}

class AutoEspecial {
  var property capacidad
  var property peso
  var property velocidadMaxima
  var property color
}

class Dependencia {
  const flota = []
  var property empleados = 0

  method agregarAFlota(rodado) {flota.add(rodado)}
  method quitarDeFlota(rodado) {flota.remove(rodado)}
  method pesoTotalFlota() = flota.sum({x=> x.peso()})
  method estaBienEquipada() = flota.size() >= 3 and flota.all({x => x.velocidadMaxima() >= 100})
  method capacidadTotalEnColor(color) = self.rodadosDeColor(color).sum({x=>x.capacidad()})
  method rodadosDeColor(color) = flota.filter({x=>x.color() == color})

  method capacidadFaltante() = empleados - self.capacidaDeLaFlota().max(0)
  method capacidaDeLaFlota() = flota.sum({x=>x.capacidad()})
  method esGrande() = empleados >= 40 and flota.size() >= 5
}




