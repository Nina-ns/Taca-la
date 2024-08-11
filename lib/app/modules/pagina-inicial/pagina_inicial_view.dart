import 'package:flutter/material.dart';
import 'package:taca_la/app/modules/pagina-inicial/tipos_lixo_card.dart';

class PaginaInicialView extends StatelessWidget {
  const PaginaInicialView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.primary,
        title: Text(
          'Taca-la',
          style: Theme.of(context).textTheme.displayLarge,
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              const Text(
                'Informações sobre o descarte',
                style: TextStyle(
                    color: Colors.black87,
                    fontSize: 20,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.bold),
              ),
              Expanded(
                child: GridView.count(
                  crossAxisCount: 2,
                  children: [
                    // continuar adicionando depois
                    TiposLixoCard(text: 'Papel', color: Colors.blue[400]),
                  ],
                ),
              ),
              ElevatedButton.icon(
                onPressed: () {
                  Navigator.pushNamed(context, '/second');
                },
                icon: const Icon(Icons.location_on_outlined),
                label: const Text('Encontrar pontos de coleta'),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.green, // Cor de fundo do botão
                  foregroundColor: Colors.white, // Cor do texto
                  padding: const EdgeInsets.symmetric(
                      horizontal: 32, vertical: 16), // Padding
                  textStyle: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold), // Estilo do texto
                  shape: RoundedRectangleBorder(
                    borderRadius:
                        BorderRadius.circular(10), // Bordas arredondadas
                  ),
                  elevation: 4, // Elevação do botão
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
