import 'package:flutter/material.dart';
import 'package:mealsapp/screens/categoris_screen.dart';
import 'package:mealsapp/screens/favorites_screen.dart';

import '../widgets/main_drawer.dart';

class TabsScreen extends StatefulWidget {
  const TabsScreen({super.key});

  @override
  State<TabsScreen> createState() => _TabsScreenState();
}

class _TabsScreenState extends State<TabsScreen> {
  final List<Map<String, Object>> _screens = [
    {
      'page': CatergoriesScreen(),
      'title': 'Categories',
    },
    {
      'page': FavoritesScreen(),
      'title': 'Your Favorite',
    },
  ];
  int _selectedPageIndex = 0;

  void _selectPage(int index) {
    setState(() {
      _selectedPageIndex = index;
    });
  }

  int _selectedScreenIndex = 0;

  void _selectScreen(int index) {
    setState(() {
      _selectedScreenIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            title: Text(_screens[_selectedPageIndex]['title'] as String),
          ),
          body: _screens[_selectedPageIndex]['page'] as Widget,
          drawer: MainDrawer(),
          bottomNavigationBar: BottomNavigationBar(
              unselectedItemColor: Colors.white,
              selectedItemColor: Theme.of(context).colorScheme.secondary,
              backgroundColor: Theme.of(context).colorScheme.primary,
              onTap: _selectScreen,
              currentIndex: _selectedScreenIndex,
              items: [
                BottomNavigationBarItem(
                  icon: Icon(Icons.category),
                  label: "Categories",
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.favorite),
                  label: "Favorite",
                )
              ]),
        ));
  }
}
