import 'package:crud_vitro/services/firebase_service.dart';
import 'package:flutter/material.dart';

// ignore: camel_case_types
class addCurso extends StatefulWidget {
  const addCurso({super.key});

  @override
  State<addCurso> createState() => _addCursoState();
}

class _addCursoState extends State<addCurso> {
  TextEditingController cursoController = TextEditingController(text: "");

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Agregar Curso'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: [
            TextField(
              controller: cursoController,
              decoration: const InputDecoration(
                hintText: 'Ingrese el nombre del curso',
              ),
            ),
            ElevatedButton(
                onPressed: () async {
                  await anadirCurso(cursoController.text).then((_) {
                    Navigator.pop(context);
                  });
                },
                child: const Text("Guardar"))
          ],
        ),
      ),
    );
  }
}
