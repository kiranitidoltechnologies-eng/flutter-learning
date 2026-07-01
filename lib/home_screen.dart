import 'package:flutter/material.dart';
import 'package:my_first_app/widgets/app_drawer_tile.dart';
import 'package:my_first_app/widgets/common_tab_content.dart';
import 'package:my_first_app/setting_screen.dart';
import 'package:my_first_app/text_const.dart';
import 'package:my_first_app/app_colors.dart';

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
          title: const Text(TextConst.homeScreen),

          // Add TabBar here
          bottom: const TabBar(
            tabs: [
              Tab(
                icon: Icon(Icons.home),
                text: TextConst.home,
              ),
              Tab(
                icon: Icon(Icons.favorite),
                text: TextConst.favorite,
              ),
              Tab(
                icon: Icon(Icons.person),
                text: TextConst.profile,
              ),
            ],
          ),
        ),

        drawer: Drawer(
          child: ListView(
            children: [
              const DrawerHeader(
                decoration: BoxDecoration(
                  color: AppColors.background,
                ),
                child: Text(
                  TextConst.welcomeKiran,
                  style: TextStyle(
                    color: AppColors.textPrimary,
                    fontSize: 24,
                  ),
                ),
              ),

              AppDrawerTile(
                icon: Icons.home,
                title: TextConst.home,
                onTap: () {
                  Navigator.pop(context);
                },
              ),

              AppDrawerTile(
                icon: Icons.settings,
                title: TextConst.settings,
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
            CommonTabContent(text: TextConst.homeTab),
            CommonTabContent(text: TextConst.favoriteTab),
            CommonTabContent(text: TextConst.profileTab),
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