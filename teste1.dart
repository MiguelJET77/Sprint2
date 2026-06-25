void main() {
  String nome = 'laranja';
  double peso = 100.2;
  String cor = 'verde e amarela';
  String sabor = 'Doce e cítrica';
  int diasDesdeColheita = 20;
  bool isMadura = funcEstaMadura(diasDesdeColheita);

  if (diasDesdeColheita >= 30) {
    isMadura = true;
  } else {
    isMadura = false;
  }

  //Testando objeto e funções
  Fruta fruta01 = Fruta(nome, peso, cor, sabor, diasDesdeColheita);
  Fruta fruta02 = Fruta("Uva", 40, "Roxa", "Doce", 20);

  //print(fruta01.peso);

  //fruta01.estaMadura(15);
  //fruta02.estaMadura(60);

  Legumes mandioca1 = Legumes('Macaxeira', 1200, 'Marrom', true);
  Fruta banana1 = Fruta('Banana', 75, 'Amarela', 'Doce', 12);
  Nozes macadamia1 = Nozes('Macadamia', 2, 'Branco Amarelado', 'Doce', 20, 35);
  Citricas Limao1 = Citricas('Limão', 50, 'Verde', 'Azedo', 5, 9);

  mandioca1.printAlimento();
  banana1.printAlimento();
  macadamia1.printAlimento();
  Limao1.printAlimento();

  mandioca1.cozinhar();
}

class Fruta extends Alimento {
  String sabor;
  int diasDesdeColheita;
  bool? isMadura;

  Fruta(
    String nome,
    double peso,
    String cor,
    this.sabor,
    this.diasDesdeColheita, {
    this.isMadura,
  }) : super(nome, peso, cor);

  void estaMadura(int diasParaMadura) {
    isMadura = diasDesdeColheita >= diasParaMadura;
    print(
      "A sua $nome foi colhida $diasDesdeColheita dias, e precisa de $diasParaMadura dias para amadurecer. Ela está madura? $isMadura",
    );

    void fazerSuco() {
      print('Você fez um suco de $nome!');
    }
  }
}

class Alimento {
  String nome;
  double peso;
  String cor;
  Alimento(this.nome, this.peso, this.cor);

  printAlimento() {
    print('Este(a) $nome pesa $peso gramas e é $cor.');
  }
}

class Legumes extends Alimento {
  bool isPrecisaCozinhar;

  Legumes(String nome, double peso, String cor, this.isPrecisaCozinhar)
    : super(nome, peso, cor);

  void cozinhar() {
    if (isPrecisaCozinhar) {
      print('Pronto! O(a) $nome está cozinhando');
    } else {
      print('Nem precisa cozinhar');
    }
  }
}

class Citricas extends Fruta {
  double nivelAzedo;

  Citricas(
    String nome,
    double peso,
    String cor,
    String sabor,
    int diasDesdeColheita,
    //bool? isMadura, //--> Opcional
    this.nivelAzedo,
  ) : super(nome, peso, cor, sabor, diasDesdeColheita);

  void existeRefri(bool existe) {
    if (existe) {
      print('Existe refrigerante de $nome.');
    } else {
      print('Nãoexiste refrigerante de $nome.');
    }
  }
}

class Nozes extends Fruta {
  double porcentagemOleoNatural;

  Nozes(
    String nome,
    double peso,
    String cor,
    String sabor,
    int diasDesdeColheita,
    this.porcentagemOleoNatural,
  ) : super(nome, peso, cor, sabor, diasDesdeColheita);
}

int quantoParaAmadurecer(int dias) {
  int diasParaAmadurecer = 10;
  int quantosDiasFaltam = dias - diasParaAmadurecer;
  return quantosDiasFaltam;
}

void mostrarMadura(
  String nome,
  int
  dias, { //Posicionais obrigatórios (únicos que não precisão estar em chaves)
  String? cor, //Nomeado opcional
  String cheiro = "Sem cheiro", //Parâmetro padrão
  required String contemagua, //Modificador required
}) {
  if (dias >= 30) {
    print("A $nome está madura.");
  } else {
    print("A $nome não está madura.");
  }
  if (cor != null) {
    print("A $nome é $cor");
  }
  print("$cheiro");
  print("$contemagua");
}

bool funcEstaMadura(int dias) {
  if (dias >= 30) {
    return true;
  } else {
    return false;
  }
}
