import 'package:flutter/material.dart';
import 'package:task3/poki%20app/widgets/poki_View_body.dart';

class PokiView extends StatelessWidget {
  const PokiView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffFAFAFA),
      body: const PokiViewBody(),
      floatingActionButton: FloatingActionButton(
        shape: const CircleBorder(),
        backgroundColor: const Color(0xff00BCD4),
        onPressed: () {},
        child: const Icon(
          Icons.replay_outlined,
          color: Colors.white,
        ),
      ),
    );
  }
}
