import 'package:flutter/material.dart';
import 'package:taca_la/app/modules/pontos-coleta/pontos_info_card.dart';

class PontosColetaView extends StatelessWidget {
  const PontosColetaView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.primary,
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(
              Icons.arrow_back_ios_new_rounded,
              color: Colors.white,
            )),
        title: const Text(
          'Pontos de Descarte',
          style: TextStyle(
              color: Colors.white, fontWeight: FontWeight.w500, fontSize: 24),
        ),
        centerTitle: true,
      ),
      body: ListView(
        children: const [
          LocalInfoCard(
              localName: 'Universidade Federal do Pará',
              imageUrl:
                  'https://s1.static.brasilescola.uol.com.br/vestibular/2020/12/ufpa.jpg',
              address: 'R. Augusto Corrêa, 01 - Guamá, Belém - PA, 66075-110',
              mapsUrl: 'https://maps.app.goo.gl/xVksJez8HXVF5r8Z9'),
        ],
      ),
    );
  }
}
