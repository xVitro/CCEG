import 'package:cloud_firestore/cloud_firestore.dart';

FirebaseFirestore db = FirebaseFirestore.instance;

Future<List> getCursos() async {
  List cursos = [];

  QuerySnapshot querySnapshot = await db.collection('cursos').get();
  for (var doc in querySnapshot.docs) {
    final Map<String, dynamic> data = doc.data() as Map<String, dynamic>;
    final person = {
      "name": data["name"],
      "uid": doc.id,
    };
    cursos.add(person);
  }

  return cursos;
}

Future<void> anadirCurso(String name) async {
  await db.collection("cursos").add({"name": name});
}

Future<void> editarCurso(String uid, String newName) async {
  await db.collection("cursos").doc(uid).set({"name": newName});
}

Future<void> borrarCurso(String uid) async {
  await db.collection("cursos").doc(uid).delete();
}
