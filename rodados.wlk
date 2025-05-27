import wollok.game.*

class Corsa {
//   var position = new Position(x=4,y=7) // game.at(0,0)
//   const pasoPor = []
//   method position(nuevaPosicion) {
    
//   }
  var property color
  method initialize() {
    if(not coloresValidos.listColores().contains(color)){
      self.error("no es un color valido")
    }
  }
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

object coloresValidos {
  const property listColores = #{"rojo", "verde", "azul", "blanco"}
}