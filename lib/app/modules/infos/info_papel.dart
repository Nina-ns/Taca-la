import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'construct_tiles.dart';

class InfoPapel extends StatelessWidget {
  const InfoPapel({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue[400],
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios_new_rounded),
          color: Colors.white,
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: const Text(
          "Papel",
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
                "Exemplos de papéis recicláveis",
                style: TextStyle(
                  color: Colors.blue[400],
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
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.newspaper,
                        size: 40,
                        color: Colors.orange[700],
                      ),
                      const SizedBox(height: 8),
                      const Text(
                        "Jornais",
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                  const Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      FaIcon(
                        FontAwesomeIcons.boxOpen,
                        size: 40,
                        color: Colors.brown,
                      ),
                      SizedBox(height: 8),
                      Text(
                        "Caixas",
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                  const Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.menu_book,
                        size: 40,
                        color: Colors.blue,
                      ),
                      SizedBox(height: 8),
                      Text(
                        "Revistas",
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                  const Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      FaIcon(
                        FontAwesomeIcons.file,
                        size: 40,
                        color: Colors.blueAccent,
                      ),
                      SizedBox(height: 8),
                      Text(
                        "Documentos",
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                  const Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.sticky_note_2,
                        size: 40,
                        color: Colors.red,
                      ),
                      SizedBox(height: 8),
                      Text(
                        "Bloco\nde Notas",
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                  const Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.email,
                        size: 40,
                        color: Colors.orange,
                      ),
                      SizedBox(height: 8),
                      Text("Envelopes"),
                    ],
                  ),
                ],
              ),
            ),
            buildExpansionTile(
                context: context,
                color: Colors.blue[400],
                title: "Como realizar o descarte?",
                subtitle:
                    "Remova clipes, grampos e fitas adesivas, dobre ou amasse caixas de papelão para reduzir o volume, evite molhar o papel antes do descarte, pois papéis úmidos não são recicláveis."),
            const SizedBox(height: 12),
            buildExpansionTile(
                context: context,
                color: Colors.blue[400],
                title: "O que não reciclar?",
                subtitle:
                    "Papel higiênico, guardanapos usados, papéis plastificados, papel carbono, papéis engordurados ou contaminados com restos de comida."),
          ],
        ),
      ),
    );
  }
}
