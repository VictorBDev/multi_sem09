import 'package:flutter/material.dart';

class Variado {
  final String nombre;
  final String tipo;
  final String categoria;
  final String imagen;

  Variado({
    required this.nombre,
    required this.tipo,
    required this.categoria,
    required this.imagen,
  });
}

List<Variado> VariadosList = [
  Variado(
    nombre: 'Pollo a las brasas',
    tipo: 'Alimento',
    categoria: 'Comida',
    imagen: 'polloBrasas.png',
  ),
  Variado(
    nombre: 'Arroz con mariscos',
    tipo: 'Alimento',
    categoria: 'Comida',
    imagen: 'mariscos.png',
  ),
  Variado(
    nombre: 'Arroz con Pollo',
    tipo: 'Alimento',
    categoria: 'Comida',
    imagen: 'arrozConPollo.png',
  ),
  Variado(
    nombre: 'Husky siberiano',
    tipo: 'Animal',
    categoria: 'Perro',
    imagen: 'husky.png',
  ),
  Variado(
    nombre: 'Doberman',
    tipo: 'Animal',
    categoria: 'Perro',
    imagen: 'doberman.png',
  ),
  Variado(
    nombre: 'Pug',
    tipo: 'Animal',
    categoria: 'Perro',
    imagen: 'pug.png',
  ),
  Variado(
    nombre: 'Munich',
    tipo: 'Lugar',
    categoria: 'Ciudad',
    imagen: 'munich.png',
  ),
  Variado(
    nombre: 'Venecia',
    tipo: 'Lugar',
    categoria: 'Ciudad',
    imagen: 'venecia.png',
  ),
  Variado(
    nombre: 'Grecia',
    tipo: 'Lugar',
    categoria: 'País',
    imagen: 'grecia.png',
  ),
];

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Variados',
        home: Scaffold(
            appBar: AppBar(
              title: const Text('Variados'),
            ),
            body: ListView.builder(
                itemCount: VariadosList.length,
                itemBuilder: (context, index) {
                  // Determinar la fuente según el tipo
                  TextStyle nombreStyle;
                  if (VariadosList[index].tipo == 'Alimento') {
                    nombreStyle = const TextStyle(
                      fontFamily: 'OpenSans',
                      fontSize: 20.0,
                    );
                  } else if (VariadosList[index].tipo == 'Animal') {
                    nombreStyle = const TextStyle(
                      fontFamily: 'Lato',
                      fontSize: 20.0,
                    );
                  } else {
                    nombreStyle = const TextStyle(
                      fontFamily: 'Ubuntu',
                      fontSize: 20.0,
                    );
                  }

                  return ListTile(
                      leading: SizedBox(
                        width: 100,
                        child: Image.asset(
                          'assets/images/${VariadosList[index].imagen}',
                        ),
                      ),
                      title: Text(
                        VariadosList[index].nombre,
                        style: nombreStyle,
                      ),
                      subtitle: Text(
                        'Tipo: ${VariadosList[index].tipo}',
                        style: const TextStyle(
                          fontFamily: 'Lato',
                          fontSize: 15.0,
                        ),
                      ));
                })));
  }
}
