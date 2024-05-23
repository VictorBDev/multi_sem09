import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ImageData {
  final String name;
  final String imagePath;
  final String type;

  ImageData({
    required this.name,
    required this.imagePath,
    required this.type,
  });
}

List<ImageData> imagesList = [
  ImageData(
      name: 'Imagen PNG', imagePath: 'assets/images/teclado.png', type: 'png'),
  ImageData(
      name: 'Imagen JPEG', imagePath: 'assets/images/skate.jpeg', type: 'jpeg'),
  ImageData(
      name: 'Imagen SVG', imagePath: 'assets/images/laptop.svg', type: 'svg'),
];

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Galería de Imágenes',
      home: ImageGallery(),
    );
  }
}

class ImageGallery extends StatelessWidget {
  const ImageGallery({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Galería de Imágenes'),
      ),
      body: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 20.0, // Espaciado vertical entre las imágenes
          crossAxisSpacing: 20.0, // Espaciado horizontal entre las imágenes
        ),
        itemCount: imagesList.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(20.0), // Ajusta el espaciado aquí
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 200,
                  width: 200,
                  child: getImageWidget(imagesList[index]),
                ),
                const SizedBox(height: 8.0),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: Text(
                    imagesList[index].name,
                    style: TextStyle(
                      fontFamily: getFontFamily(imagesList[index].type),
                      fontSize: 16.0,
                    ),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }

  Widget getImageWidget(ImageData imageData) {
    switch (imageData.type) {
      case 'svg':
        return SvgPicture.asset(
          imageData.imagePath,
          width: double.infinity,
          height: double.infinity,
        );
      case 'png':
      case 'jpeg':
      default:
        return Image.asset(
          imageData.imagePath,
          fit: BoxFit.cover,
        );
    }
  }

  String getFontFamily(String type) {
    switch (type) {
      case 'png':
        return 'Arial';
      case 'jpeg':
        return 'TimesNewRoman';
      case 'svg':
      default:
        return 'Roboto';
    }
  }
}
