import 'package:flutter/material.dart';
import 'home_screen.dart';
import 'search_screen.dart';
import 'profile_screen.dart';

class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  int _currentIndex = 0;

  final List<Widget> _screens = [
    HomeScreen(),
    SearchScreen(),
    ProfileScreen(),
  ];

  // Tab titles shown in the AppBar
  final List<String> _titles = ['Home', 'Search', 'Profile'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // ── AppBar ────────────────────────────────────────────────
      appBar: AppBar(
        title: Text(_titles[_currentIndex]),
        backgroundColor: const Color.fromARGB(255, 255, 73, 118),
        foregroundColor: Colors.white,
      ),

      // ── Drawer ────────────────────────────────────────────────
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [

            // Header
            DrawerHeader(
              decoration: const BoxDecoration(color: Color.fromARGB(255, 255, 2, 65)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  CircleAvatar(
                    radius: 30,
                    backgroundColor: Colors.white,
                    child: Icon(Icons.person, size: 30, color: Color.fromARGB(255, 255, 5, 80)),
                  ),
                  SizedBox(height: 8),
                  Text(
                    'Ayomi Peace',
                    style: TextStyle(color: Colors.white, fontSize: 16),
                  ),
                  Text(
                    'peaceayomirwoth@gmail.com',
                    style: TextStyle(color: Colors.white70),
                  ),
                ],
              ),
            ),

            // Home — closes the drawer and switches to the Home tab
            ListTile(
              leading: const Icon(Icons.home),
              title: const Text('Home'),
              selected: _currentIndex == 0,
              selectedColor: const Color.fromARGB(255, 248, 6, 87),
              onTap: () {
                Navigator.pop(context); // close drawer
                setState(() => _currentIndex = 0);
              },
            ),

            // Search — closes the drawer and switches to the Search tab
            ListTile(
              leading: const Icon(Icons.search),
              title: const Text('Search'),
              selected: _currentIndex == 1,
              selectedColor: const Color.fromARGB(255, 250, 5, 87),
              onTap: () {
                Navigator.pop(context); // close drawer
                setState(() => _currentIndex = 1);
              },
            ),

            // Profile — closes the drawer and switches to the Profile tab
            ListTile(
              leading: const Icon(Icons.person),
              title: const Text('Profile'),
              selected: _currentIndex == 2,
              selectedColor: Colors.purple,
              onTap: () {
                Navigator.pop(context); // close drawer
                setState(() => _currentIndex = 2);
              },
            ),

            // Settings — pushes the existing named route
            ListTile(
              leading: const Icon(Icons.settings),
              title: const Text('Settings'),
              onTap: () {
                Navigator.pop(context); // close drawer first
                Navigator.pushNamed(context, '/settings');
              },
            ),

            const Divider(),

            // Logout
            ListTile(
              leading: const Icon(Icons.logout, color: Colors.red),
              title: const Text('Logout', style: TextStyle(color: Colors.red)),
              onTap: () {
                Navigator.pop(context); // close drawer
                // TODO: add your logout logic here
              },
            ),

          ],
        ),
      ),

      // ── Body ──────────────────────────────────────────────────
      body: _screens[_currentIndex],

      // ── Bottom Navigation Bar ─────────────────────────────────
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (index) => setState(() => _currentIndex = index),
        selectedItemColor: const Color.fromARGB(255, 253, 10, 124),
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Search'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
        ],
      ),
    );
  }
}