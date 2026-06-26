void main() {
  Cavaleiro Miguel = Cavaleiro('Miguel', 25, 'Brasileiro', 0);
  CavaleiroDeBronze Seiya = CavaleiroDeBronze(
    'Seiya',
    14,
    'Japonês',
    5000.00,
    "Pegasus",
  );
  CavaleiroDePrata Marin = CavaleiroDePrata(
    'Marin',
    16,
    'Grega',
    51000.00,
    'Águia',
  );
  CavaleiroDeOuro Manigold = CavaleiroDeOuro(
    'Manigold',
    25,
    'Italiano',
    700000.00,
    'Câncer',
  );

  Seiya.printCavaleiro();
  Seiya.Atacar();
  Marin.Atacar();
  Manigold.Atacar();
  Miguel.printCavaleiro();
}

class Cavaleiro {
  String nome;
  int idade;
  String nacionalidade;
  double cosmo;

  Cavaleiro(this.nome, this.idade, this.nacionalidade, this.cosmo);

  printCavaleiro() {
    print('O cosmo do(a) cavaleiro(a) $nome é $cosmo!');
  }
}

class CavaleiroDeBronze extends Cavaleiro {
  String armadura;

  CavaleiroDeBronze(
    String nome,
    int idade,
    String nacionalidade,
    double cosmo,
    this.armadura,
  ) : super(nome, idade, nacionalidade, cosmo);

  void Atacar() {
    print(
      'O(a) cavaleiro(a) $nome de bronze de $armadura ataca na velocidade de Mach 1!',
    );
  }
}

class CavaleiroDePrata extends CavaleiroDeBronze {
  CavaleiroDePrata(
    String nome,
    int idade,
    String nacionalidade,
    double cosmo,
    String armadura,
  ) : super(nome, idade, nacionalidade, cosmo, armadura);

  @override
  void Atacar() {
    print(
      'O(a) cavaleiro(a) $nome de prata de $armadura ataca na velocidade de Mach 2 a 5!',
    );
  }
}

class CavaleiroDeOuro extends CavaleiroDePrata {
  CavaleiroDeOuro(
    String nome,
    int idade,
    String nacionalidade,
    double cosmo,
    String armadura,
  ) : super(nome, idade, nacionalidade, cosmo, armadura);

  @override
  void Atacar() {
    print(
      'O(a) cavaleiro(a) $nome de ouro de $armadura ataca na velocidade da luz!',
    );
  }
}
