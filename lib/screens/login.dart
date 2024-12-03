import 'package:flutter/material.dart';


// ignore: camel_case_types
class login extends StatefulWidget {
  const login({super.key});

  @override
  State<login> createState() => _loginState();
}

class _loginState extends State<login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              "assets/logo.png",
              height: 300,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, "/hub");
              },
              child: const Text('INGRESAR'),
            ),
          ],
        ),
      ),
    );
  }
}
