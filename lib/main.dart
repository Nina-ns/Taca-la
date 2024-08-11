import 'package:flutter/material.dart';
import 'package:taca_la/tela_ponto_coleta.dart';
import 'package:taca_la/tela_principal_view.dart';

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
        '/': (context) => const TelaPrincipalView(),
        '/second': (context) => const PontoColetaView(),
      },
    );
  }
}
