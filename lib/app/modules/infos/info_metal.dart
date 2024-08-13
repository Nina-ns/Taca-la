import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'construct_tiles.dart';

class InfoMetal extends StatelessWidget {
  const InfoMetal({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.yellow[700],
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios_new_rounded),
          color: Colors.white,
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: const Text(
          "Metal",
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
                "Exemplos de metais recicláveis",
                style: TextStyle(
                  color: Colors.yellow[700],
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
                        FontAwesomeIcons.beer,
                        size: 40,
                        color: Colors.grey,
                      ),
                      SizedBox(height: 8),
                      Text(
                        "Latas de\nAlumínio",
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      FaIcon(
                        FontAwesomeIcons.oilCan,
                        size: 40,
                        color: Colors.grey,
                      ),
                      SizedBox(height: 8),
                      Text(
                        "Latas de\nAço",
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      FaIcon(
                        FontAwesomeIcons.tools,
                        size: 40,
                        color: Colors.orange,
                      ),
                      SizedBox(height: 8),
                      Text(
                        "Ferragens",
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.stacked_line_chart,
                        size: 40,
                        color: Colors.brown,
                      ),
                      SizedBox(height: 8),
                      Text(
                        "Cabos e\nFios de Cobre",
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      FaIcon(
                        FontAwesomeIcons.utensils,
                        size: 40,
                        color: Colors.grey,
                      ),
                      SizedBox(height: 8),
                      Text(
                        "Panelas de\nAço Inox",
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.kitchen,
                        size: 40,
                        color: Colors.blueGrey,
                      ),
                      SizedBox(height: 8),
                      Text(
                        "Objetos de\nAlumínio",
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                ],
              ),
            ),
            buildExpansionTile(
                context: context,
                color: Colors.yellow[700],
                title: "Como realizar o descarte?",
                subtitle:
                "Lave as latas para remover resíduos, amasse as latas de alumínio para economizar espaço, verifique se há locais específicos para descarte de metais pesados, como baterias e eletrodomésticos."),
            const SizedBox(height: 12),
            buildExpansionTile(
                context: context,
                color: Colors.yellow[700],
                title: "O que não reciclar?",
                subtitle:
                "Latas de tinta, produtos de aço inoxidável, latas de aerossol (sem esvaziar completamente), chapas de metal muito grandes."),
          ],
        ),
      ),
    );
  }
}
