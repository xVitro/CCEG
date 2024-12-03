import 'package:flutter/material.dart';

class Hub extends StatelessWidget {
  const Hub({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Hub'),
      ),
      body: GridView.count(
        crossAxisCount: 2,
        padding: const EdgeInsets.all(16.0),
        children: <Widget>[
          boton(context, 'Cursos', '/cursos'),
          botonDesactivado('Membresias'),
          botonDesactivado('Asesorias'),
          boton(context, 'Cerrar Sesión', '/login'),
        ],
      ),
    );
  }

  Widget boton(BuildContext context, String title, String route) {
    return Card(
      elevation: 4,
      child: InkWell(
        onTap: () {
          Navigator.pushNamed(context, route);
        },
        child: Center(
          child: Text(
            title,
            style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }

  Widget botonDesactivado(String title) {
    return Card(
      elevation: 4,
      child: Center(
        child: Text(
          title,
          style: const TextStyle(
              fontSize: 20, fontWeight: FontWeight.bold, color: Colors.grey),
        ),
      ),
    );
  }
}
