void main() {
  String laranja = toString(
    nome: "Laranja",
    peso: 98,
    diasDesdeColheita: 30,
    diasAmadurecer: 20,
  );
  print(laranja);
}

toString({
  required String nome,
  required double peso,
  required diasDesdeColheita,
  required diasAmadurecer,
}) {
  //bool estaMadura = diasDesdeColheita >= diasAmadurecer;

  bool EstaMadura(int dias) {
    if (diasDesdeColheita >= diasAmadurecer) {
      return true;
    } else {
      return false;
    }
  }

  String madura_ou_n = EstaMadura(diasDesdeColheita) ? "Sim" : "Não";

  return "*Nome: $nome\n *Peso: $peso g\n *Dias desde a colheita: $diasDesdeColheita\n *Dias para ficar madura: $diasAmadurecer\n *Está madura? $madura_ou_n";
}
