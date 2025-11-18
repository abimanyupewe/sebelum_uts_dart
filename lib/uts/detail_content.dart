import 'package:flutter/material.dart';
import 'package:sebelum_uts_dart/uts/data/content.dart';
import 'package:iconsax/iconsax.dart';

class DetailContent extends StatelessWidget {
  var id;
  DetailContent({super.key, required this.id});

  final Map<String, dynamic> userProfile = {
    'name': 'John Doe',
    'bio':
        'Flutter Developer passionate about creating amazing mobile applications',
    'avatar':
        'https://images.unsplash.com/photo-1472099645785-5658abf4ff4e?w=150',
    'username': '@johndoe_dev',
    'posts': 10,
    'followers': 3500,
    'following': 180,
  };

  final DataContent dataContent = DataContent();

  @override
  Widget build(BuildContext context) {
    final item = dataContent.content.firstWhere(
      (element) => element['id'] == id,
      orElse: () => {},
    );

    if (item.isEmpty) {
      return Scaffold(
        appBar: AppBar(title: const Text('Detail Content')),
        body: const Center(child: Text('Data tidak ditemukan')),
      );
    }

    return Scaffold(
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    CircleAvatar(
                      radius: 20,
                      backgroundImage: NetworkImage(userProfile['avatar']),
                    ),
                    const SizedBox(width: 8),
                    Text(
                      userProfile['name'],
                      style: const TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                IconButton(onPressed: () {}, icon: Icon(Icons.more_horiz)),
              ],
            ),
          ),

          Image.network(item['img'], fit: BoxFit.cover),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Wrap(
              runSpacing: 5,
              children: [
                Row(
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.favorite_border),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.comment_outlined),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.send_outlined),
                    ),
                  ],
                ),
                Text(
                  item['title'] ?? '',
                  style: const TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(item['caption'] ?? 'Tidak ada caption'),
                ...List<Widget>.from(
                  (item['comments'] as List<dynamic>).map(
                    (comment) => ListTile(
                      leading: CircleAvatar(
                        backgroundImage: NetworkImage(comment['profile_pic']),
                      ),
                      title: Text(comment['user']),
                      subtitle: Text(comment['text']),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
