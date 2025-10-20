abstract class Deportista {
  DateTime fechaNac;
  String pais;
  String nomDeporte;

  Deportista(this.fechaNac, this.pais, this.nomDeporte);
}

abstract class DeportistaEquipo extends Deportista {
  String nomJug;
  String nomEq;
  DateTime fechaFin;

  DeportistaEquipo(
    this.nomJug,
    this.nomEq,
    this.fechaFin,
    DateTime fechaNac,
    String pais,
    String nomDeporte,
  ) : super(fechaNac, pais, nomDeporte);
}

class JugadorBasket extends DeportistaEquipo with Basket {
  JugadorBasket(
    String nomJug,
    String nomEq,
    DateTime fechaFin,
    DateTime fechaNac,
    String pais,
    String nomDeporte,
  ) : super(nomJug, nomEq, fechaFin, fechaNac, pais, nomDeporte);

String toString() {
  print('Jugador: ' + nomJug);
  print('Equipo: ' + nomEq);
  print('Nacimiento: ' + fechaNac.toString());
  print('Fin contrato: ' + fechaFin.toString());
  print('País: ' + pais);
  print('Deporte: ' + nomDeporte);
  return '';
}

}

class JugadorFutbol extends DeportistaEquipo with Futbol {
  JugadorFutbol(
    String nomJug,
    String nomEq,
    DateTime fechaFin,
    DateTime fechaNac,
    String pais,
    String nomDeporte,
  ) : super(nomJug, nomEq, fechaFin, fechaNac, pais, nomDeporte);


String toString() {
  print('Jugador: ' + nomJug);
  print('Equipo: ' + nomEq);
  print('Nacimiento: ' + fechaNac.toString());
  print('Fin contrato: ' + fechaFin.toString());
  print('País: ' + pais);
  print('Deporte: ' + nomDeporte);
  return '';
}
}

mixin Futbol {
  int tirarFalta(bool gol) {
    if (gol == true) { return 1; } else { return 0;}
  }

  int tirarPenal(bool entra) { 
    if (entra == true) { return 1; } else { return 0; }
  }
}

mixin Basket {
  int tirLliure(bool ok) {
    if (ok == true) { return 1; } else { return 0; }
  }

  int tirDos(bool ok) {
    if (ok == true) { return 2; } else { return 0; }
  }

  int tirTres(bool ok) {
    if (ok == true) { return 3; } else { return 0; }
  }
}


void main() {
  var f = JugadorFutbol('Ronald Araujo','Barça',DateTime(2027,6,30),DateTime(1999,3,7),'Uruguay','Futbol');
  print('futbol jugador');
  f.toString();
  print(f.tirarFalta(false));
  print(f.tirarPenal(true));

  print('---');

  var b = JugadorBasket('James Nadji','Barça',DateTime(2025,6,30),DateTime(2004,8,14),'Nigeria','Basket');
  print('basket jugador');
  b.toString();
  print(b.tirLliure(true));
  print(b.tirDos(false));
  print(b.tirTres(true));
}