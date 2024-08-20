import 'package:flutter/material.dart';
import 'package:watch_one_piece/screens/downloads.dart';
import 'package:watch_one_piece/screens/home.dart';
import 'package:watch_one_piece/screens/my_stuff.dart';
import 'package:watch_one_piece/screens/search.dart';

class BottomNav extends StatefulWidget {
  const BottomNav({super.key});

  @override
  State<BottomNav> createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  int currentTab = 0;

  final PageStorageBucket bucket = PageStorageBucket();
  Widget currentpage = const Home();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageStorage(
        bucket: bucket,
        child: currentpage,
      ),
      bottomNavigationBar: ClipRRect(
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(30),
          topRight: Radius.circular(30),
        ),
        child: BottomAppBar(
          shadowColor: Theme.of(context).shadowColor,
          color: Theme.of(context).scaffoldBackgroundColor,
          shape: const CircularNotchedRectangle(),
          notchMargin: 5,
          child: SizedBox(
            height: 60,
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  MaterialButton(
                    onPressed: () {
                      setState(() {
                        currentpage = const Home();
                        currentTab = 0;
                      });
                    },
                    minWidth: 40,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.home_outlined,
                          color:
                              currentTab == 0 ? Theme.of(context).primaryColor : Colors.grey,
                        ),
                        Text(
                          "Home",
                          style: TextStyle(
                            color:
                                currentTab == 0 ? Theme.of(context).primaryColor : Colors.grey,
                          ),
                        ),
                      ],
                    ),
                  ),
                  MaterialButton(
                    onPressed: () {
                      setState(() {
                        currentpage = const Downloads();
                        currentTab = 1;
                      });
                    },
                    minWidth: 40,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.download,
                          color:
                              currentTab == 1 ? Theme.of(context).primaryColor : Colors.grey,
                        ),
                        Text(
                          "Downloads",
                          style: TextStyle(
                            color:
                                currentTab == 1 ? Theme.of(context).primaryColor : Colors.grey,
                          ),
                        ),
                      ],
                    ),
                  ),
                  MaterialButton(
                    onPressed: () {
                      setState(() {
                        currentpage = const Search();
                        currentTab = 2;
                      });
                    },
                    minWidth: 40,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.search,
                          color:
                              currentTab == 2 ? Theme.of(context).primaryColor : Colors.grey,
                        ),
                        Text(
                          "Search",
                          style: TextStyle(
                            color:
                                currentTab == 2 ? Theme.of(context).primaryColor : Colors.grey,
                          ),
                        ),
                      ],
                    ),
                  ),
                  MaterialButton(
                    onPressed: () {
                      setState(() {
                        currentpage = const MyStuff();
                        currentTab = 3;
                      });
                    },
                    minWidth: 40,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.person,
                          color:
                              currentTab == 3 ? Theme.of(context).primaryColor : Colors.grey,
                        ),
                        Text(
                          "My Stuff",
                          style: TextStyle(
                            color:
                                currentTab == 3 ? Theme.of(context).primaryColor : Colors.grey,
                          ),
                        ),
                      ],
                    ),
                  ),
                ]),
          ),
        ),
      ),
    );
  }
}
