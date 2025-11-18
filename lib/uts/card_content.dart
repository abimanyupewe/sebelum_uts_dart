import 'package:flutter/material.dart';
import 'package:sebelum_uts_dart/uts/detail_content.dart';

class CardContent extends StatelessWidget {
  final List<Map<String, dynamic>> content;
  const CardContent({super.key, required this.content});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
        childAspectRatio: 1,
        crossAxisSpacing: 8,
        mainAxisSpacing: 8,
      ),
      itemCount: content.length,
      itemBuilder: (context, index) {
        final item = content[index];
        return GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => DetailContent(id: item['id']),
              ),
            );
          },
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              image: DecorationImage(
                image: NetworkImage(item['img']),
                fit: BoxFit.cover,
              ),
            ),
          ),
        );
      },
    );
  }
}
