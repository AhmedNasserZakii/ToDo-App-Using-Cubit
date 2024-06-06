import 'package:flutter/material.dart';
import 'package:task3/poki%20app/widgets/details_view_body.dart';

class DetailsView extends StatelessWidget {
  const DetailsView({super.key, required this.pokeIndex});
  final int pokeIndex;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff00BCD4),
      body: DetailsViewBody(
        selectedPokeIndex: pokeIndex,
      ),
    );
  }
}
