import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Mostrar imagen local'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('assets/images/logo.png'),
              const SizedBox(height: 20),
              Text(
                'Texto con fuente Jacquard Regular',
                style: TextStyle(
                  fontFamily: 'Jacquard',
                  fontSize: 20,
                ),
              ),
              const SizedBox(height: 20),
              Text(
                'Texto con fuente Roboto Regular',
                style: TextStyle(fontSize: 20, fontFamily: 'Roboto-Bold'),
              ),
              const SizedBox(height: 20),
              Text(
                'Texto con fuente Normal Víctor Balboa',
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
