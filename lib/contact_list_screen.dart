import 'package:flutter/material.dart';

class ContactListScreen extends StatelessWidget {
  const ContactListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, String>> contacts = [
      {'name': 'Luis Osvaldo Pérez', 'phone': '221258'},
      {'name': 'Ana María López', 'phone': '123456'},
      {'name': 'Carlos Gómez', 'phone': '789012'},
      // Agrega más contactos según sea necesario
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text('Lista de Contactos'),
        backgroundColor: Colors.orange,
      ),
      body: ListView.builder(
        itemCount: contacts.length,
        itemBuilder: (context, index) {
          final contact = contacts[index];
          return ListTile(
            title: Text(contact['name']!),
            subtitle: Text(contact['phone']!),
            trailing: Row(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                IconButton(
                  icon: const Icon(Icons.message),
                  onPressed: () {
                    // Acción para enviar un mensaje
                  },
                ),
                IconButton(
                  icon: const Icon(Icons.call),
                  onPressed: () {
                    // Acción para hacer una llamada
                  },
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
