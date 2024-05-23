import 'package:flutter/material.dart';

class Producto {
  final String nombre;
  final String precio;
  final String descripcion;
  final String imagen;

  Producto({
    required this.nombre,
    required this.precio,
    required this.descripcion,
    required this.imagen,
  });
}

List<Producto> productosList = [
  Producto(
    nombre: 'Webcam',
    precio: '\$50.00',
    descripcion: 'Una webcam de alta resolución para tus videollamadas.',
    imagen: 'webcam.png',
  ),
  Producto(
    nombre: 'SSD',
    precio: '\$120.00',
    descripcion: 'Disco SSD de 1TB para almacenamiento rápido y seguro.',
    imagen: 'ssd.png',
  ),
  Producto(
    nombre: 'Reposa Pies',
    precio: '\$25.00',
    descripcion: 'Reposa pies ergonómico para mayor comodidad en tu oficina.',
    imagen: 'reposaPies.png',
  ),
  Producto(
    nombre: 'Mouse Pad',
    precio: '\$15.00',
    descripcion: 'Mouse pad grande y antideslizante.',
    imagen: 'mousePad.png',
  ),
  Producto(
    nombre: 'Cooler',
    precio: '\$30.00',
    descripcion: 'Cooler para mantener tu PC a una temperatura óptima.',
    imagen: 'cooler.png',
  ),
  Producto(
    nombre: 'Mouse',
    precio: '\$20.00',
    descripcion: 'Mouse ergonómico con alta precisión.',
    imagen: 'mouse.png',
  ),
  Producto(
    nombre: 'USB Hub',
    precio: '\$18.00',
    descripcion: 'Hub USB con 4 puertos para mayor conectividad.',
    imagen: 'usbHub.png',
  ),
  Producto(
    nombre: 'Power Bank',
    precio: '\$40.00',
    descripcion: 'Batería externa de alta capacidad para tus dispositivos.',
    imagen: 'powerbank.png',
  ),
  Producto(
    nombre: 'Auricular',
    precio: '\$35.00',
    descripcion:
        'Auriculares con cancelación de ruido y alta fidelidad de sonido.',
    imagen: 'auricular.png',
  ),
  Producto(
    nombre: 'Teclado',
    precio: '\$50.00',
    descripcion: 'Teclado mecánico con retroiluminación RGB.',
    imagen: 'teclado.png',
  ),
];

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Productos',
      home: ProductoLista(),
    );
  }
}

class ProductoLista extends StatelessWidget {
  const ProductoLista({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Productos'),
      ),
      body: ListView.builder(
        itemCount: productosList.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: Image.asset(
              'assets/images/${productosList[index].imagen}',
              width: 100,
            ),
            title: Text(
              productosList[index].nombre,
              style: const TextStyle(
                fontFamily: 'Montserrat',
                fontSize: 20.0,
              ),
            ),
            subtitle: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  productosList[index].precio,
                  style: const TextStyle(
                    fontFamily: 'Roboto',
                    fontSize: 15.0,
                  ),
                ),
                const SizedBox(height: 4.0),
                Text(
                  productosList[index].descripcion,
                  style: const TextStyle(
                    fontFamily: 'Nunito',
                    fontSize: 12.0,
                  ),
                ),
              ],
            ),
            isThreeLine: true,
            contentPadding:
                const EdgeInsets.symmetric(vertical: 10.0, horizontal: 16.0),
          );
        },
      ),
    );
  }
}
