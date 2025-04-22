import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Mon Store',
      theme: ThemeData(
        useMaterial3: true,
        colorSchemeSeed: Colors.blue,
        cardTheme: CardTheme(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
        ),
      ),
      home: StoreHomePage(),
    );
  }
}

class StoreHomePage extends StatelessWidget {
  final apps = [
    {
      'name': 'Ma Super App',
      'version': '1.0.2',
      'description': 'Une appli incroyable !',
      'apkUrl': 'https://tonsite.com/apks/ma-super-app.apk',
      'iconUrl': 'https://tonsite.com/icons/super-app.png'
    },
    {
      'name': 'Jeu Fou',
      'version': '0.9.5',
      'description': 'Un jeu fun à tester',
      'apkUrl': 'https://tonsite.com/apks/jeu-fou.apk',
      'iconUrl': 'https://tonsite.com/icons/jeu-fou.png'
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Mon Store')),
      body: ListView.builder(
        itemCount: apps.length,
        itemBuilder: (context, index) {
          final app = apps[index];
          return Card(
            margin: EdgeInsets.all(16),
            child: Padding(
              padding: EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(app['name'], style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                  SizedBox(height: 8),
                  Text(app['description']),
                  SizedBox(height: 8),
                  ElevatedButton(
                    onPressed: () {
                      // ici tu pourras ajouter la logique de téléchargement
                    },
                    child: Text('Installer'),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
