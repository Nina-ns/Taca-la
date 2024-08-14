import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'construct_tiles.dart';

class InfoVidro extends StatelessWidget {
  const InfoVidro({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 90,
        backgroundColor: Colors.grey[200],
        flexibleSpace: ClipPath(
          clipper: CustomShapeClipper(),
          child: Container(
            height: 300,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [Colors.green.shade600, Colors.green.shade800],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ),
            ),
          ),
        ),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios_new_rounded),
          color: Colors.white,
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Text(
          "Vidro",
          style: Theme.of(context).textTheme.displayMedium,
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
                style: GoogleFonts.poppins(
                    color: Colors.green[600],
                    fontSize: 20,
                    fontWeight: FontWeight.w600),
              ),
            ),
            const SizedBox(height: 12),
            SizedBox(
              height: 260,
              child: GridView.count(
                physics: const NeverScrollableScrollPhysics(),
                crossAxisCount: 3,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const FaIcon(
                        FontAwesomeIcons.wineBottle,
                        size: 40,
                        color: Colors.green,
                      ),
                      const SizedBox(height: 8),
                      Text(
                        "Garrafas\nde vidro",
                        textAlign: TextAlign.center,
                        style: Theme.of(context).textTheme.headlineSmall,
                      ),
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const FaIcon(
                        FontAwesomeIcons.jarWheat,
                        size: 40,
                        color: Colors.brown,
                      ),
                      const SizedBox(height: 8),
                      Text(
                        "Potes\nde vidro",
                        textAlign: TextAlign.center,
                        style: Theme.of(context).textTheme.headlineSmall,
                      ),
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const FaIcon(
                        FontAwesomeIcons.champagneGlasses,
                        size: 40,
                        color: Colors.orangeAccent,
                      ),
                      const SizedBox(height: 8),
                      Text(
                        "Copos\nde vidro",
                        textAlign: TextAlign.center,
                        style: Theme.of(context).textTheme.headlineSmall,
                      ),
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const FaIcon(
                        FontAwesomeIcons.flask,
                        size: 40,
                        color: Colors.blue,
                      ),
                      const SizedBox(height: 8),
                      Text(
                        "Frascos\nde remédio",
                        textAlign: TextAlign.center,
                        style: Theme.of(context).textTheme.headlineSmall,
                      ),
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const FaIcon(
                        FontAwesomeIcons.lightbulb,
                        size: 40,
                        color: Colors.yellow,
                      ),
                      const SizedBox(height: 8),
                      Text(
                        "Lâmpadas\nincandescentes",
                        textAlign: TextAlign.center,
                        style: Theme.of(context).textTheme.headlineSmall,
                      ),
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const FaIcon(
                        FontAwesomeIcons.whiskeyGlass,
                        size: 40,
                        color: Colors.red,
                      ),
                      const SizedBox(height: 8),
                      Text(
                        "Vidros\nde perfume",
                        textAlign: TextAlign.center,
                        style: Theme.of(context).textTheme.headlineSmall,
                      ),
                    ],
                  ),
                ],
              ),
            ),
            buildExpansionTile(
                context: context,
                color: Colors.green[600],
                title: "Como realizar o descarte?",
                subtitle:
                    "Lave os recipientes para remover resíduos de alimentos ou líquidos, separe os vidros por cor (transparente, verde e âmbar) se possível, pois facilita a reciclagem, embale os cacos de vidro em um recipiente seguro, como uma caixa, para evitar acidentes."),
            const SizedBox(height: 12),
            buildExpansionTile(
                context: context,
                color: Colors.green[600],
                title: "O que não reciclar?",
                subtitle:
                    "Espelhos, vidros de janela temperados, lâmpadas, cerâmicas, porcelanas, vidros com filmes adesivos ou laminados."),
          ],
        ),
      ),
    );
  }
}

class CustomShapeClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    path.lineTo(0.0, size.height - 20);
    path.quadraticBezierTo(
        size.width / 2, size.height, size.width, size.height - 20);
    path.lineTo(size.width, 0.0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
