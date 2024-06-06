import 'package:flutter/material.dart';
import 'package:task3/poki%20app/details_view.dart';
import 'package:task3/poki%20app/models/poke_dummy_data.dart';

class PokiViewBody extends StatelessWidget {
  const PokiViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        const CustomAppBar(),
        SliverFillRemaining(
          child: GridView.builder(
            itemCount: pokemonList.length,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
            ),
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => DetailsView(
                          pokeIndex: index,
                        ),
                      ),
                    );
                  },
                  child: Container(
                    padding: const EdgeInsets.all(8),
                    width: MediaQuery.of(context).size.width / 2.5,
                    height: MediaQuery.of(context).size.height / 4.5,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Column(
                      children: [
                        Hero(
                          tag: pokemonList[index].name,
                          child: Image.network(
                            pokemonList[index].imageUrl,
                            width: MediaQuery.of(context).size.width / 3.2,
                            height: MediaQuery.of(context).size.width / 3.2,
                          ),
                        ),
                        const SizedBox(height: 8),
                        Text(
                          pokemonList[index].name,
                          style: const TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      backgroundColor: const Color(0xff00BCD4),
      leading: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.menu,
            color: Colors.white,
            size: 30,
          ),
        ),
      ),
      title: const Center(
        child: Text(
          'Poke App',
          style: TextStyle(
            color: Colors.white,
            fontSize: 30,
          ),
        ),
      ),
      leadingWidth: 30,
    );
  }
}
