import 'package:flutter/material.dart';
import 'package:taca_la/app/modules/pontos-coleta/pontos_coleta_view.dart';
import 'package:taca_la/app/modules/pagina-inicial/pagina_inicial_view.dart';
import 'package:taca_la/app/modules/infos/info_plastico.dart';
import 'package:taca_la/app/modules/infos/info_papel.dart';
import 'package:taca_la/app/modules/infos/info_vidro.dart';
import 'package:taca_la/app/modules/infos/info_metal.dart';

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
        '/': (context) => const PaginaInicialView(),
        '/pontos': (context) => const PontosColetaView(),
        '/infoPlástico': (context) => const InfoPlastico(),
        '/infoPapel': (context) => const InfoPapel(),
        '/infoVidro': (context) => const InfoVidro(),
        '/infoMetal': (context) => const InfoMetal(),
      },
    );
  }
}
