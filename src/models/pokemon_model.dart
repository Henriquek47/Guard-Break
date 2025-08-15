class PokemonModel {
  final int id;
  final String name;
  final int baseAttack = 5;
  double hb = 100;
  List<HabilidadesModel> habilidades;
  double statusSpecialBar = 0;
  double parryCooldown = 0;
  double attackCooldown = 0;

  PokemonModel({
    required this.id,
    required this.name,
    required this.habilidades,
  });

  factory PokemonModel.fromJson(Map<String, dynamic> json) {
    return PokemonModel(
      id: json['id'],
      name: json['name'] ?? '',
      habilidades: [],
    );
  }
}

class HabilidadesModel {
  final String name;
  final int power;

  HabilidadesModel({required this.name, required this.power});

  factory HabilidadesModel.fromJson(Map<String, dynamic> json) {
    return HabilidadesModel(
      name: json['name'] ?? '',
      power: json['power'] ?? 0,
    );
  }
}
