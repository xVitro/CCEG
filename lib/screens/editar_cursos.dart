import 'package:crud_vitro/services/firebase_service.dart';
import 'package:flutter/material.dart';

// ignore: camel_case_types
class editCurso extends StatefulWidget {
  const editCurso({super.key});

  @override
  State<editCurso> createState() => _editCursoState();
}

class _editCursoState extends State<editCurso> {
  TextEditingController cursoController = TextEditingController(text: "");

  @override
  Widget build(BuildContext context) {
    final Map arguments = ModalRoute.of(context)!.settings.arguments as Map;
    cursoController.text = arguments["name"];

    return Scaffold(
      appBar: AppBar(
        title: const Text('Editar Curso'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: [
            TextField(
              controller: cursoController,
              decoration: const InputDecoration(
                hintText: 'Ingrese el nuevo nombre del curso',
              ),
            ),
            ElevatedButton(
                onPressed: () async {
                  await editarCurso(arguments['uid'], cursoController.text)
                      .then((_) {
                    Navigator.pop(context);
                  });
                },
                child: const Text("Editar"))
          ],
        ),
      ),
    );
  }
}
