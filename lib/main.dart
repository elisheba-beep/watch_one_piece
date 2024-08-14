import 'package:flutter/material.dart';
import 'package:watch_one_piece/screens/downloads.dart';
import 'package:watch_one_piece/screens/home.dart';
import 'package:watch_one_piece/screens/my_stuff.dart';
import 'package:watch_one_piece/screens/search.dart';
import 'package:watch_one_piece/theme/theme.dart';
import 'package:watch_one_piece/theme/util.dart';

void main() {
  runApp(const WatchOnePiece());
}

class WatchOnePiece extends StatelessWidget {
  const WatchOnePiece({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    final brightness = View.of(context).platformDispatcher.platformBrightness;
    // Retrieves the default theme for the platform
    //TextTheme textTheme = Theme.of(context).textTheme;

    // Use with Google Fonts package to use downloadable fonts

    TextTheme textTheme = createTextTheme(context, "Pirata One", "Bangers");
    MaterialTheme theme = MaterialTheme(textTheme);

    return MaterialApp(
      title: 'Watch One Piece',
      theme: brightness == Brightness.light ? theme.light() : theme.dark(),
      home: const BottomNav(),
    );
  }
}

class BottomNav extends StatefulWidget {
  const BottomNav({super.key});

  @override
  State<BottomNav> createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  int selectedIndex = 0;
  void _onItemTapped(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  static const List<Widget> pages = <Widget>[
    Home(),
    Downloads(),
    Search(),
    MyStuff()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: pages.elementAt(selectedIndex), //New
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: const Color(0xffc8472c),
        elevation: 25,
        showUnselectedLabels: true,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
            backgroundColor: Color(0xffc8472c),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.download),
            label: 'Downloads',
            backgroundColor: Color(0xffc8472c),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Search',
            backgroundColor: Color(0xffc8472c),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'My Stuff',
            backgroundColor: Color(0xffc8472c),
          ),
        ],
        currentIndex: selectedIndex,
        onTap: _onItemTapped,
      ),
    );
  }
}
