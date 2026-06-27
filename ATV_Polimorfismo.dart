void main() {
  carro uno = carro('Fiat Uno', 'Gasolina', 860, 1280, 510, 700);
  trem MariaFumaca = trem('Maria Fumaça', 'carvão', 260, 300, 100, 360, 3);
  trem escoces = trem('Escocês', 'carvão', 300, 350, 310, 290, 7);

  MariaFumaca.Deslocamento();
  MariaFumaca.Abastecimento();
  MariaFumaca.capacidadeMaxima();

  uno.Deslocamento();

  escoces.Deslocamento();
  escoces.capacidadeMaxima();
}

abstract class meioDeTransporte {
  Deslocamento();
  Abastecimento();
  capacidadeMaxima();
}

class GrandetransporteTerrestre implements meioDeTransporte {
  String nome;
  String combustivel;
  double peso;
  double pesoMax;

  GrandetransporteTerrestre(
    this.nome,
    this.combustivel,
    this.peso,
    this.pesoMax,
  );

  @override
  Deslocamento() {
    print('$nome se locomove por Terra');
  }

  @override
  Abastecimento() {
    print('$nome está sendo abastecido com $combustivel');
  }

  @override
  capacidadeMaxima() {
    if (peso >= pesoMax) {
      print(
        "$nome está no acima ou no limite de peso recomendado pelo fabricante!",
      );
    } else {
      print('O peso do $nome está dentro do recomendado');
    }
  }
}

class carro extends GrandetransporteTerrestre {
  double autonomiaUrbana;
  double autonomiaRodoviaria;

  carro(
    String nome,
    String combustivel,
    double peso,
    double pesoMax,
    this.autonomiaUrbana,
    this.autonomiaRodoviaria,
  ) : super(nome, combustivel, peso, pesoMax);

  @override
  Deslocamento() {
    print(
      'A autonomia de $nome é de $autonomiaUrbana em cidades e $autonomiaRodoviaria em estradas',
    );
    return super.Deslocamento();
  }
}

class trem extends GrandetransporteTerrestre {
  int passageiros;
  int limitePassageiros;
  int estacoes;

  trem(
    String nome,
    String combustivel,
    double peso,
    double pesoMax,
    this.passageiros,
    this.limitePassageiros,
    this.estacoes,
  ) : super(nome, combustivel, peso, pesoMax);

  @override
  Deslocamento() {
    print(
      'O metrô de $nome irá percorrer seu trajeto e passará por $estacoes estações',
    );
    return super.Deslocamento();
  }

  @override
  capacidadeMaxima() {
    if (peso >= pesoMax) {
      print(
        "$nome está no acima ou no limite de $pesoMax toneladas recomendado pelo fabricante!",
      );
    } else if (passageiros > limitePassageiros) {
      print('O metrô $nome chegou ao seu limite máximo de passageiros');
    } else {
      print(
        'O peso e a quantidade de passageiros do metrô $nome está dentro do recomendado',
      );
    }
  }
}
