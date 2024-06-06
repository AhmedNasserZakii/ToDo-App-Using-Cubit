import 'package:flutter/material.dart';

import 'package:task3/poki%20app/models/poke_dummy_data.dart';

class DetailsViewBody extends StatelessWidget {
  const DetailsViewBody({super.key, required this.selectedPokeIndex});
  final int selectedPokeIndex;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomAppBarRow(index: selectedPokeIndex),
        Stack(
          children: [
            Container(
              width: double.infinity,
              margin: const EdgeInsets.symmetric(
                horizontal: 24,
                vertical: 60,
              ),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(16),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    height: MediaQuery.of(context).size.height / 5.1,
                  ),
                  Text(
                    pokemonList[selectedPokeIndex].name,
                    style: const TextStyle(
                      fontSize: 32,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Height : ${pokemonList[selectedPokeIndex].height}',
                      ),
                      const SizedBox(height: 12),
                      Text(
                        'Weight : ${pokemonList[selectedPokeIndex].weight}',
                      ),
                    ],
                  ),
                  const SizedBox(height: 12),
                  const Text(
                    'Types',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: List.generate(
                      pokemonList[selectedPokeIndex].types.length,
                      (index) {
                        return Container(
                          margin: const EdgeInsets.symmetric(
                              horizontal: 16, vertical: 16),
                          width: MediaQuery.of(context).size.width / 4,
                          height: MediaQuery.of(context).size.height / 20,
                          decoration: BoxDecoration(
                            color: const Color(0xffFFC107),
                            borderRadius: BorderRadius.circular(
                              30,
                            ),
                          ),
                          padding: const EdgeInsets.all(8),
                          child: Text(
                            textAlign: TextAlign.center,
                            pokemonList[selectedPokeIndex].types[index],
                            style: const TextStyle(fontSize: 18),
                          ),
                        );
                      },
                    ),
                  ),
                  const Text(
                    'Weakness',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: List.generate(
                      pokemonList[selectedPokeIndex].weaknesses.length,
                      (index) {
                        return Container(
                          margin: const EdgeInsets.symmetric(
                              horizontal: 10, vertical: 16),
                          // width: MediaQuery.of(context).size.width / 4,
                          height: MediaQuery.of(context).size.height / 20,
                          decoration: BoxDecoration(
                            color: const Color(0xffF44336),
                            borderRadius: BorderRadius.circular(
                              30,
                            ),
                          ),
                          padding: const EdgeInsets.all(8),
                          child: Text(
                            textAlign: TextAlign.center,
                            pokemonList[selectedPokeIndex].weaknesses[index],
                            style: const TextStyle(
                              fontSize: 18,
                              color: Colors.white,
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                  const Text(
                    'Next Evoluation',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.symmetric(
                        horizontal: 10, vertical: 16),
                    //padding: const EdgeInsets.all(5),
                    height: MediaQuery.of(context).size.height / 20,
                    width: MediaQuery.of(context).size.width / 2.7,
                    decoration: BoxDecoration(
                      color: const Color(0xff4CAF50),
                      borderRadius: BorderRadius.circular(
                        30,
                      ),
                    ),
                    child: Text(
                      pokemonList[selectedPokeIndex].nextEvolution,
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                        fontSize: 30,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
              bottom: MediaQuery.of(context).size.height / 1.78,
              right: MediaQuery.of(context).size.width / 6,
              child: Hero(
                tag: pokemonList[selectedPokeIndex].name,
                child: Image.network(
                  pokemonList[selectedPokeIndex].imageUrl,
                  width: MediaQuery.of(context).size.width / 1.5,
                  height: MediaQuery.of(context).size.width / 1.5,
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}

class CustomAppBarRow extends StatelessWidget {
  const CustomAppBarRow({
    super.key,
    required this.index,
  });

  final int index;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 16,
        vertical: 24,
      ),
      child: Row(
        children: [
          IconButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            icon: const Icon(
              Icons.arrow_back_ios,
              color: Colors.white,
              size: 32,
            ),
          ),
          // SizedBox(
          //   width: MediaQuery.of(context).size.width / 4.5,
          // ),
          const SizedBox(width: 70),
          Text(
            textAlign: TextAlign.center,
            pokemonList[index].name,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 32,
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    );
  }
}
