import 'package:flutter/material.dart';

class Galeri extends StatelessWidget {
  const Galeri({super.key});

  final List<Map<String, dynamic>> galleryItems = const [
    {'id': 1, 'imagePath': 'https://picsum.photos/400/300?random=1'},
    {'id': 2, 'imagePath': 'https://picsum.photos/400/300?random=2'},
    {'id': 3, 'imagePath': 'https://picsum.photos/400/300?random=3'},
    {'id': 4, 'imagePath': 'https://picsum.photos/400/300?random=4'},
    {'id': 5, 'imagePath': 'https://picsum.photos/400/300?random=5'},
    {'id': 6, 'imagePath': 'https://picsum.photos/400/300?random=6'},
    {'id': 7, 'imagePath': 'https://picsum.photos/400/300?random=7'},
    {'id': 8, 'imagePath': 'https://picsum.photos/400/300?random=8'},
    {'id': 9, 'imagePath': 'https://picsum.photos/400/300?random=9'},
    {'id': 10, 'imagePath': 'https://picsum.photos/400/300?random=10'},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Galeri')),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: GridView.builder(
          itemCount: galleryItems.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, // jumlah kolom grid
            crossAxisSpacing: 8,
            mainAxisSpacing: 8,
          ),
          itemBuilder: (context, index) {
            final item = galleryItems[index];
            return GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) =>
                        ImageFullScreen(imageUrl: item['imagePath']),
                  ),
                );
              },
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  image: DecorationImage(
                    image: NetworkImage(item['imagePath']),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}

class ImageFullScreen extends StatelessWidget {
  final String imageUrl;
  const ImageFullScreen({super.key, required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      backgroundColor: Colors.white,
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: NetworkImage(imageUrl),
            fit: BoxFit.contain,
          ),
        ),
      ),
    );
  }
}
