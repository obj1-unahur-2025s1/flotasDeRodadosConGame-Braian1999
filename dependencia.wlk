import rodados.*

class Dependencia {
  const flota = []
  var property empleados = 0

  method agregarAFlota(rodado) {
    if(not coloresValidos.listColores().contains(rodado.color())){
        self.error("El auto no tiene un color valido")
    }
    flota.add(rodado)
    }
  method quitarDeFlota(rodado) {flota.remove(rodado)}
  method pesoTotalFlota() = flota.sum({x=> x.peso()})
  method estaBienEquipada() = flota.size() >= 3 and flota.all({x => x.velocidadMaxima() >= 100})
  method capacidadTotalEnColor(color) = self.rodadosDeColor(color).sum({x=>x.capacidad()})
  method rodadosDeColor(color) = flota.filter({x=>x.color() == color})

  method capacidadFaltante() = empleados - self.capacidaDeLaFlota().max(0)
  method capacidaDeLaFlota() = flota.sum({x=>x.capacidad()})
  method esGrande() = empleados >= 40 and flota.size() >= 5
}