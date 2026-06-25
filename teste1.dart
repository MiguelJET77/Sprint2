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

  print(fruta01.peso);

  fruta01.estaMadura(15);
  fruta02.estaMadura(60);
}

class Fruta {
  String nome;
  double peso;
  String cor;
  String sabor;
  int diasDesdeColheita;
  bool? isMadura;

  Fruta(
    this.nome,
    this.peso,
    this.cor,
    this.sabor,
    this.diasDesdeColheita, {
    this.isMadura,
  });

  void estaMadura(int diasParaMadura) {
    isMadura = diasDesdeColheita >= diasParaMadura;
    print(
      "A sua $nome foi colhida $diasDesdeColheita dias, e precisa de $diasParaMadura dias para amadurecer. Ela está madura? $isMadura",
    );
  }
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
