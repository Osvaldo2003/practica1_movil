import 'package:flutter/material.dart';

class RegisterContactScreen extends StatefulWidget {
  const RegisterContactScreen({Key? key}) : super(key: key);

  @override
  _RegisterContactScreenState createState() => _RegisterContactScreenState();
}

class _RegisterContactScreenState extends State<RegisterContactScreen> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _lastNameController = TextEditingController();
  final TextEditingController _numberController = TextEditingController();

  void _registerContact() {
    if (_formKey.currentState?.validate() ?? false) {
      // Aquí puedes manejar la lógica de registro del contacto
      // Por ejemplo, podrías enviar los datos a un servidor o guardarlos localmente

      // Mostrar un mensaje de éxito
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Contacto registrado')),
      );

      // Limpiar los campos
      _nameController.clear();
      _lastNameController.clear();
      _numberController.clear();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Registrar Contacto'),
        backgroundColor: Colors.orange, // Color del AppBar
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              TextFormField(
                controller: _nameController,
                decoration: const InputDecoration(labelText: 'Nombre'),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Por favor ingrese su nombre';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 16),
              TextFormField(
                controller: _lastNameController,
                decoration: const InputDecoration(labelText: 'Apellido'),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Por favor ingrese su apellido';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 16),
              TextFormField(
                controller: _numberController,
                decoration: const InputDecoration(labelText: 'Número'),
                keyboardType: TextInputType.phone,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Por favor ingrese su número';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 24),
              ElevatedButton(
                onPressed: _registerContact,
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.orange, // Color del botón
                  foregroundColor: Colors.white, // Color del texto del botón
                ),
                child: const Text('Registrar'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
