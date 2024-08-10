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
            children: [],
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
