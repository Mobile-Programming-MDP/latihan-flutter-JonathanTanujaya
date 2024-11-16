import 'package:flutter/material.dart';
import 'package:wisata_candi/FavoriteScreen.dart';
import 'package:wisata_candi/HomeScreen.dart';
import 'package:wisata_candi/ProfileScreen.dart';
import 'package:wisata_candi/SearchScreen.dart';

void main() {
  runApp(const MainApp());
}

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  // TODO 1 deklarasi variabel
  int _currentIndex = 0;
  final List<Widget> _children = [
    Homescreen(),
    SearchScreen(),
    Favoritescreen(),
    ProfileScreen(),

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // TODO 2 Properti body berupa widget yang ditampilkan
      body: _children[_currentIndex],
      // TODO 3 Properti botomNavigatorBar dengan nilai Theme
      bottomNavigationBar: Theme(
        data: Theme.of(context).copyWith(canvasColor: Colors.deepPurple[50]),
        child: BottomNavigationBar(
          currentIndex: _currentIndex,
          onTap: (index) {
            setState(() {
              _currentIndex = index;
            });
          },
          showUnselectedLabels: true,
          selectedItemColor: Colors.deepPurple,
          unselectedItemColor: Colors.deepPurple[100],
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: "Home",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.search),
              label: "Search",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.favorite),
              label: "Favorite",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: "Profile",
            ),
          ],
        ),
      ),
      // TODO 4 data dan child dari Theme
    );
  }
}

class MainApp extends StatelessWidget {
  const MainApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const MainScreen(), // Set MainScreen as the home widget
      debugShowMaterialGrid: false,
      title: "Wisata Candi",
      theme: ThemeData(),
    );
  }
}
