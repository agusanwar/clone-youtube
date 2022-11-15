import 'package:flutter/material.dart';
import 'package:youtube_clone/screens/pages/add_screens.dart';
import 'package:youtube_clone/screens/pages/explore_screens.dart';
import 'package:youtube_clone/screens/pages/home_screens.dart';
import 'package:youtube_clone/screens/pages/library_screens.dart';
import 'package:youtube_clone/screens/pages/subscriptions_screens.dart';

class NavbarScreens extends StatefulWidget {
  const NavbarScreens({super.key});

  @override
  State<NavbarScreens> createState() => _NavbarScreensState();
}

class _NavbarScreensState extends State<NavbarScreens> {
  int selectedIndex = 0;
  final _screens = [
    const HomeScreens(),
    const ExploreScreens(),
    const AddScreens(),
    const SubcriptionsScreens(),
    const LibraryScreens(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: _screens
            .asMap()
            .map(
              (i, screens) => MapEntry(
                i,
                Offstage(
                  offstage: selectedIndex != i,
                  child: screens,
                ),
              ),
            )
            .values
            .toList(),
      ),
      backgroundColor: Colors.black,
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: selectedIndex,
        onTap: (i) => setState(
          () => selectedIndex = i,
        ),
        selectedFontSize: 10,
        unselectedFontSize: 10,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.grey,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home_outlined,
            ),
            activeIcon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.explore_outlined,
            ),
            activeIcon: Icon(Icons.explore),
            label: 'Explore',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.add_circle_outline,
            ),
            activeIcon: Icon(Icons.add_circle),
            label: 'Add',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.subscriptions_outlined,
            ),
            activeIcon: Icon(Icons.subscriptions),
            label: 'Subcriptions',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.video_library_outlined,
            ),
            activeIcon: Icon(Icons.video_library),
            label: 'Libarary',
          ),
        ],
      ),
    );
  }
}
