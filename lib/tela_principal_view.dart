import 'package:flutter/material.dart';

class TelaPrincipalView extends StatelessWidget {
  const TelaPrincipalView({super.key});

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
                    CardTelaPrincipal(text: 'Papel', color: Colors.blue[400]),
                  ],
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/second');
                },
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
                child: const Row(
                  children: [
                    Icon(
                      Icons.location_on_outlined,
                      size: 24,
                    ),
                    SizedBox(width: 8),
                    Text('Encontrar pontos de coleta')
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class CardTelaPrincipal extends StatelessWidget {
  const CardTelaPrincipal({super.key, required this.text, required this.color});

  final String text;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Card(
          elevation: 4,
          color: color,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Icon(
                Icons.recycling,
                size: 56,
                color: Colors.white,
              ),
              const SizedBox(height: 10),
              Text(
                text,
                style: Theme.of(context).textTheme.displayLarge,
              )
            ],
          ),
        ),
      ),
    );
  }
}
