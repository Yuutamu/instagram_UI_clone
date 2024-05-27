import 'package:flutter/material.dart';
import 'package:instagram_ui_clone/feed_screen.dart';
import 'package:instagram_ui_clone/profile_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Instagram Clone'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  final String title;
  const MyHomePage({Key? key, required this.title}) : super(key: key); // memo:titleパラメータ受け取るためのコンストラクタ

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

// MEMO: Feed投稿部分の冗長さを回避するために widget として切り出す
class InstagramPostItem extends StatelessWidget {
  const InstagramPostItem({Key? key, required this.imageUrl}) : super(key:  key);

  final String imageUrl;

  @override
  Widget build(BuildContext context) {
    return Image.network(
      imageUrl,
      fit: BoxFit.cover,
    );
  }
}

class _MyHomePageState extends State<MyHomePage> {
  int _currentIndex = 0;

  // _pageWidget という配列にそれぞれのページ（class）を格納
  final _pageWidgets = [
    FeedScreen(),
    ProfileScreen(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pageWidgets.elementAt(_currentIndex),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          // TODO:bottom icon の数を増やす予定
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'feed'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
        ],
        currentIndex: _currentIndex,
        onTap: _onItemTapped,
      ),
    );
  }
}