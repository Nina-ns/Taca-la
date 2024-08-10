import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Taca-la',
      theme: ThemeData(
          useMaterial3: true,
          colorScheme: ColorScheme.fromSwatch(
            primarySwatch: Colors.green,
            backgroundColor: Colors.white,
            accentColor: Colors.greenAccent,
          ),
          textTheme: const TextTheme(
              displayLarge: TextStyle(
                  color: Colors.white, fontFamily: 'Poppins', fontSize: 28),
              bodyLarge: TextStyle(
                  color: Colors.white, fontFamily: 'Roboto', fontSize: 32))),
      initialRoute: '/',
      routes: {
        '/': (context) => const TelaPrincipal(),
        // '/second': (context) => PontoColetaView(),
      },
    );
  }
}

class TelaPrincipal extends StatelessWidget {
  const TelaPrincipal({super.key});

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
          child: GridView.count(
            crossAxisCount: 2,
            children: [
              // continuar adicionando depois
              CardTelaPrincipal(text: 'Papel', color: Colors.blue[400]),
            ],
          ),
        ),
      ),
    );
  }
}

// ElevatedButton(
//           child: Text('Pontos de Coleta'),
//           onPressed: () {
//             Navigator.pushNamed(context, '/second');
//           },
//         ),

class CardTelaPrincipal extends StatelessWidget {
  const CardTelaPrincipal({super.key, required this.text, required this.color});

  final String text;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(4.0), // Espaçamento ao redor do Card
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
    );
  }
}
