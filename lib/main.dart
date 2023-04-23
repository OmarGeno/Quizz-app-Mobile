import 'package:flutter/material.dart';
import 'users.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'WhatsApp',
      home: DefaultTabController(
        length: 4,
        child: Scaffold(
          appBar: AppBar(
            toolbarHeight: 50,
            title: const Text('WhatsApp'),
            backgroundColor: const Color.fromRGBO(0, 127, 104, 1),
            actions: [  
              Row(
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.camera_alt,
                    ),
                    tooltip: 'camera',
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.search,
                    ),
                    tooltip: 'search',
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.more_vert,
                    ),
                    tooltip: 'menu',
                  ),
                ],
              ),
            ],
            bottom: const TabBar(
              labelPadding: EdgeInsets.all(10),
              indicatorColor: Colors.white,
              tabs: [
                Icon(
                  Icons.groups_rounded,
                ),
                Text('Chats'),
                Text('Status'),
                Text('Calls'),
              ],
            ),
          ),
          body: ListView(
              children: users
                  .map((value) => Container(child: value)
                      )
                  .toList()),
        ),
      ),
    );
  }
}
