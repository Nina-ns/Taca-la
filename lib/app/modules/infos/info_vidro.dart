import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'construct_tiles.dart';

class InfoVidro extends StatelessWidget {
  const InfoVidro({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.primary,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios_new_rounded),
          color: Colors.white,
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: const Text(
          "Vidro",
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w500,
            fontSize: 24,
          ),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 12),
            Center(
              child: Text(
                "Exemplos de vidros recicláveis",
                style: TextStyle(
                  color: Theme.of(context).colorScheme.primary,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Poppins',
                ),
              ),
            ),
            const SizedBox(height: 12),
            SizedBox(
              height: 260,
              child: GridView.count(
                crossAxisCount: 3,
                children: const [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      FaIcon(
                        FontAwesomeIcons.wineBottle,
                        size: 40,
                        color: Colors.green,
                      ),
                      SizedBox(height: 8),
                      Text(
                        "Garrafas\nde vidro",
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      FaIcon(
                        FontAwesomeIcons.jarWheat,
                        size: 40,
                        color: Colors.brown,
                      ),
                      SizedBox(height: 8),
                      Text(
                        "Potes\nde vidro",
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      FaIcon(
                        FontAwesomeIcons.glassCheers,
                        size: 40,
                        color: Colors.orangeAccent,
                      ),
                      SizedBox(height: 8),
                      Text(
                        "Copos\nde vidro",
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      FaIcon(
                        FontAwesomeIcons.flask,
                        size: 40,
                        color: Colors.blue,
                      ),
                      SizedBox(height: 8),
                      Text(
                        "Frascos\nde remédio",
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      FaIcon(
                        FontAwesomeIcons.lightbulb,
                        size: 40,
                        color: Colors.yellow,
                      ),
                      SizedBox(height: 8),
                      Text(
                        "Lâmpadas\nincandescentes",
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      FaIcon(
                        FontAwesomeIcons.glassWhiskey,
                        size: 40,
                        color: Colors.red,
                      ),
                      SizedBox(height: 8),
                      Text(
                        "Vidros\nde perfume",
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                ],
              ),
            ),
            buildExpansionTile(
                context: context,
                color: Theme.of(context).colorScheme.primary,
                title: "Como realizar o descarte?",
                subtitle:
                "Lave os recipientes para remover resíduos de alimentos ou líquidos, separe os vidros por cor (transparente, verde e âmbar) se possível, pois facilita a reciclagem, embale os cacos de vidro em um recipiente seguro, como uma caixa, para evitar acidentes."),
            const SizedBox(height: 12),
            buildExpansionTile(
                context: context,
                color: Theme.of(context).colorScheme.primary,
                title: "O que não reciclar?",
                subtitle:
                "Espelhos, vidros de janela temperados, lâmpadas, cerâmicas, porcelanas, vidros com filmes adesivos ou laminados."),
          ],
        ),
      ),
    );
  }
}
