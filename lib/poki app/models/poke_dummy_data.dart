class Pokemon {
  final String name;
  final String imageUrl;
  final String height;
  final String weight;
  final List<String> types;
  final List<String> weaknesses;
  final String nextEvolution;

  Pokemon({
    required this.name,
    required this.imageUrl,
    required this.height,
    required this.weight,
    required this.types,
    required this.weaknesses,
    required this.nextEvolution,
  });
}

List<Pokemon> pokemonList = [
  Pokemon(
    name: 'Bulbasaur',
    imageUrl:
        'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/1.png',
    height: '0.7 m',
    weight: '6.9 kg',
    types: ['Grass', 'Poison'],
    weaknesses: ['Fire', 'Ice', 'Flying', 'Psychic'],
    nextEvolution: 'Ivysaur',
  ),
  Pokemon(
    name: 'Ivysaur',
    imageUrl:
        'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/2.png',
    height: '1.0 m',
    weight: '13.0 kg',
    types: ['Grass', 'Poison'],
    weaknesses: ['Fire', 'Ice', 'Flying', 'Psychic'],
    nextEvolution: 'Venusaur',
  ),
  Pokemon(
    name: 'Venusaur',
    imageUrl:
        'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/3.png',
    height: '2.0 m',
    weight: '100.0 kg',
    types: ['Grass', 'Poison'],
    weaknesses: ['Fire', 'Ice', 'Flying', 'Psychic'],
    nextEvolution: 'None',
  ),
  Pokemon(
    name: 'Charmander',
    imageUrl:
        'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/4.png',
    height: '0.6 m',
    weight: '8.5 kg',
    types: ['Fire'],
    weaknesses: ['Water', 'Rock', 'Ground'],
    nextEvolution: 'Charmeleon',
  ),
  Pokemon(
    name: 'Charmeleon',
    imageUrl:
        'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/5.png',
    height: '1.1 m',
    weight: '19.0 kg',
    types: ['Fire'],
    weaknesses: ['Water', 'Rock', 'Ground'],
    nextEvolution: 'Charizard',
  ),
  Pokemon(
    name: 'Charizard',
    imageUrl:
        'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/6.png',
    height: '1.7 m',
    weight: '90.5 kg',
    types: ['Fire', 'Flying'],
    weaknesses: ['Water', 'Electric', 'Rock'],
    nextEvolution: 'None',
  ),
  Pokemon(
    name: 'Squirtle',
    imageUrl:
        'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/7.png',
    height: '0.5 m',
    weight: '9.0 kg',
    types: ['Water'],
    weaknesses: ['Electric', 'Grass'],
    nextEvolution: 'Wartortle',
  ),
  Pokemon(
    name: 'Wartortle',
    imageUrl:
        'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/8.png',
    height: '1.0 m',
    weight: '22.5 kg',
    types: ['Water'],
    weaknesses: ['Electric', 'Grass'],
    nextEvolution: 'Blastoise',
  ),
];
