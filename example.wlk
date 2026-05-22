// ======================
// BEBIDAS
// ======================

object whisky {

  method rendimiento(dosis) {
    return 0.9 ** dosis
  }
}

object terere {

  method rendimiento(dosis) {
    return 1.max(dosis * 0.1)
  }
}

object cianuro {

  method rendimiento(dosis) {
    return 0
  }
}


// ======================
// TITO


object tito {

  const peso = 70
  const inerciaBase = 490

  var bebidaConsumida = whisky
  var dosisConsumida = 0

  // ----------------------
  // ÓRDENES
  // ----------------------

  method consumir(cantidad, bebida) {
    dosisConsumida = cantidad
    bebidaConsumida = bebida
  }

  // ----------------------
  // CONSULTAS
  // ----------------------

  method velocidad() {
    return bebidaConsumida.rendimiento(dosisConsumida) * inerciaBase / peso
  }
}