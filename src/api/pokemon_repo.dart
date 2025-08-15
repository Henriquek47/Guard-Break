import '../models/pokemon_model.dart';
import 'api_client.dart';

Future<PokemonModel> getPokemon(String pokemonName) async {
  final dataPokemon = await apiRequest(
    'https://pokeapi.co/api/v2/pokemon/$pokemonName',
  );

  Map<String, dynamic> dataMove1 = {};
  Map<String, dynamic> dataMove2 = {};

  if (dataPokemon['moves'][0]['move']['url'] != null) {
    dataMove1 = await apiRequest(dataPokemon['moves'][0]['move']['url']);
  }

  if (dataPokemon['moves'][1]['move']['url'] != null) {
    dataMove2 = await apiRequest(dataPokemon['moves'][1]['move']['url']);
  }

  HabilidadesModel habilidade1 = HabilidadesModel.fromJson(dataMove1);
  HabilidadesModel habilidade2 = HabilidadesModel.fromJson(dataMove2);
  PokemonModel pokemon = PokemonModel.fromJson(dataPokemon);
  pokemon.habilidades = [habilidade1, habilidade2];
  return pokemon;
}
