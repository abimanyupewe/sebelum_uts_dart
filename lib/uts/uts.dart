import 'package:flutter/material.dart';
import 'package:sebelum_uts_dart/uts/card_content.dart';
import 'package:sebelum_uts_dart/uts/data/content.dart';

class Uts extends StatefulWidget {
  const Uts({super.key});

  @override
  State<Uts> createState() => _UtsState();
}

class _UtsState extends State<Uts> with SingleTickerProviderStateMixin {
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

  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Text('${userProfile['username']}'),
        centerTitle: true,
        elevation: 1,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            Wrap(
              runSpacing: 20,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CircleAvatar(
                      radius: 50,
                      backgroundImage: NetworkImage(userProfile['avatar']),
                    ),
                    Column(
                      children: [
                        Text(
                          '${userProfile['posts']}',
                          style: const TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const Text('Posts'),
                      ],
                    ),
                    Column(
                      children: [
                        Text(
                          '${userProfile['followers']}',
                          style: const TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const Text('Followers'),
                      ],
                    ),
                    Column(
                      children: [
                        Text(
                          '${userProfile['following']}',
                          style: const TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const Text('Following'),
                      ],
                    ),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      userProfile['name'],
                      style: const TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      userProfile['username'],
                      style: const TextStyle(fontSize: 16, color: Colors.grey),
                    ),
                    Text(
                      userProfile['bio'],
                      style: const TextStyle(fontSize: 16),
                      softWrap: true,
                      overflow: TextOverflow.visible,
                    ),
                  ],
                ),
                OutlinedButton(
                  onPressed: () {},
                  style: OutlinedButton.styleFrom(
                    minimumSize: Size(double.infinity, 45),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5),
                    ),
                  ),
                  child: const Text(
                    "Edit Profile",
                    style: TextStyle(color: Colors.black),
                  ),
                ),

                // TabBar langsung di sini
                TabBar(
                  controller: _tabController,
                  tabs: const [
                    Tab(icon: Icon(Icons.grid_on)),
                    Tab(icon: Icon(Icons.person_pin_outlined)),
                  ],
                  labelColor: Colors.black,
                  unselectedLabelColor: Colors.grey,
                  indicatorColor: Colors.black,
                ),

                SizedBox(
                  height: 1200,
                  child: TabBarView(
                    controller: _tabController,
                    children: [
                      CardContent(content: dataContent.content),
                      Text('No Content Available'),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
