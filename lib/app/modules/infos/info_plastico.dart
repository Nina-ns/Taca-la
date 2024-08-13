import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class InfoPlastico extends StatelessWidget {
  const InfoPlastico({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.primary,
        title: const Text(
          "Plástico",
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w500,
            fontSize: 24,
          ),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Descarte de lixo plástico",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                fontFamily: 'Poppins',
              ),
            ),
            const SizedBox(height: 12),
            const Center(
              child: Text(
                "Exemplos de recicláveis plásticos",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Poppins',
                ),
              ),
            ),
            const SizedBox(height: 12),
            Expanded(
              child: GridView.count(
                crossAxisCount: 3,
                children: [
                  const Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      FaIcon(
                        FontAwesomeIcons.bottleWater,
                        size: 40,
                        color: Colors.blue,
                      ),
                      SizedBox(height: 8),
                      Text(
                        "Garrafas\nPet",
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.shopping_bag_outlined,
                        size: 40,
                        color: Colors.amber[700],
                      ),
                      const SizedBox(height: 8),
                      const Text(
                        "Sacolas\nplásticas",
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                  const Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.toys,
                        size: 40,
                        color: Colors.red,
                      ),
                      SizedBox(height: 8),
                      Text(
                        "Brinquedos\nplásticos",
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                  const Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.clean_hands_outlined,
                        size: 40,
                        color: Colors.lightBlueAccent,
                      ),
                      SizedBox(height: 8),
                      Text(
                        "Produtos\nde limpeza",
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                  const Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      FaIcon(
                        FontAwesomeIcons.jar,
                        size: 40,
                        color: Colors.pinkAccent,
                      ),
                      SizedBox(height: 8),
                      Text(
                        "Potes\nde iogurte",
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                  const Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.restaurant,
                        size: 40,
                        color: Colors.redAccent,
                      ),
                      SizedBox(height: 8),
                      Text("Talheres\nplásticos"),
                    ],
                  ),
                ],
              ),
            ),
            const Text(
                "AKSDUHFOQIWUEHFLKAJSDGNLAKJDHKAIUEFHLAKJSDFNHAKLIUSHDFLQWKJENLASUDHFLASIODJFNLAKJWENRTLAUSDHFLAOJSDHFLAKWEIHFOIAUSDHFLKAJSDF")
          ],
        ),
      ),
    );
  }
}
