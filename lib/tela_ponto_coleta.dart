import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class PontoColetaView extends StatelessWidget {
  const PontoColetaView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.primary,
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context, '/second');
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

class LocalInfoCard extends StatelessWidget {
  final String localName;
  final String imageUrl;
  final String address;
  final String mapsUrl;

  const LocalInfoCard(
      {super.key,
      required this.localName,
      required this.imageUrl,
      required this.address,
      required this.mapsUrl});

  Future<void> _launchURL(String url) async {
    final Uri uri = Uri.parse(url);
    if (!await launchUrl(uri)) {
      throw 'Não foi possível abrir a URL: $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Card(
        elevation: 4,
        color: Colors.grey[200],
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.network(imageUrl),
              ),
              const SizedBox(
                height: 12,
              ),
              Text(
                localName,
                style:
                    const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              Divider(
                color: Colors.grey[300],
              ),
              Text(address, style: const TextStyle(fontSize: 18)),
              const SizedBox(height: 12),
              Center(
                child: ElevatedButton.icon(
                  onPressed: () => _launchURL(mapsUrl),
                  icon: const Icon(Icons.map),
                  label: const Text('Abrir no Google Maps'),
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.green[500],
                      foregroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      padding: const EdgeInsets.symmetric(
                          horizontal: 24.0, vertical: 12.0)),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
