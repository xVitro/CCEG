import 'package:crud_vitro/screens/editar_cursos.dart';
import 'package:crud_vitro/screens/cursos.dart';
import 'package:crud_vitro/screens/hub.dart';
import 'package:crud_vitro/screens/login.dart';
import 'package:crud_vitro/screens/agregar_cursos.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'CCEG Learning',
        debugShowCheckedModeBanner: false,
        initialRoute: '/login',
        routes: {
          '/login': (context) => const login(),
          '/hub': (context) => const Hub(),
          '/cursos': (context) => const Cursos(),
          '/add': (context) => const addCurso(),
          '/edit': (context) => const editCurso(),
        });
  }
}
