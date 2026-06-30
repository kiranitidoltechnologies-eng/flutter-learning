import 'package:flutter/material.dart';
import 'package:my_first_app/setting_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3, // Number of tabs

      child: Scaffold(
        appBar: AppBar(
          title: const Text('Home Screen'),

          // Add TabBar here
          bottom: const TabBar(
            tabs: [
              Tab(
                icon: Icon(Icons.home),
                text: 'Home',
              ),
              Tab(
                icon: Icon(Icons.favorite),
                text: 'Favorite',
              ),
              Tab(
                icon: Icon(Icons.person),
                text: 'Profile',
              ),
            ],
          ),
        ),

        drawer: Drawer(
          child: ListView(
            children: [
              const DrawerHeader(
                decoration: BoxDecoration(
                  color: Colors.blue,
                ),
                child: Text(
                  'Welcome Kiran',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                  ),
                ),
              ),

              ListTile(
                leading: const Icon(Icons.home),
                title: const Text('Home'),
                onTap: () {
                  Navigator.pop(context);
                },
              ),

              ListTile(
                leading: const Icon(Icons.settings),
                title: const Text('Settings'),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const SettingScreen(),
                    ),
                  );
                },
              ),
            ],
          ),
        ),

        // Replace your body with TabBarView
        body: const TabBarView(
          children: [
            Center(
              child: Text(
                'Home Tab',
                style: TextStyle(fontSize: 24),
              ),
            ),

            Center(
              child: Text(
                'Favorite Tab',
                style: TextStyle(fontSize: 24),
              ),
            ),

            Center(
              child: Text(
                'Profile Tab',
                style: TextStyle(fontSize: 24),
              ),
            ),
          ],
        ),

        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const SettingScreen(),
              ),
            );
          },
          child: const Icon(Icons.add),
        ),
      ),
    );
  }
}