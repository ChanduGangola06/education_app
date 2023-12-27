import 'package:education_app/core/res/colours.dart';
import 'package:education_app/presentation/providers/dashboard_controllers.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:iconly/iconly.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  static const routeName = '/dashboard';

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  void initState() {
    super.initState();
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
  }

  @override
  Widget build(BuildContext context) {
    final controller = DashboardController();
    return Scaffold(
      body: IndexedStack(
        index: controller.currentIndex,
        children: controller.screens,
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: controller.currentIndex,
        showSelectedLabels: false,
        backgroundColor: Colors.white,
        elevation: 8,
        onTap: controller.changeIndex,
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              controller.currentIndex == 0 ? IconlyBold.home : IconlyLight.home,
              color: controller.currentIndex == 0
                  ? Colours.primaryColour
                  : Colors.grey,
            ),
            label: 'Home',
            backgroundColor: Colors.white,
          ),
          BottomNavigationBarItem(
            icon: Icon(
              controller.currentIndex == 1
                  ? IconlyBold.document
                  : IconlyLight.document,
              color: controller.currentIndex == 1
                  ? Colours.primaryColour
                  : Colors.grey,
            ),
            label: 'Materials',
            backgroundColor: Colors.white,
          ),
          BottomNavigationBarItem(
            icon: Icon(
              controller.currentIndex == 2 ? IconlyBold.chat : IconlyLight.chat,
              color: controller.currentIndex == 2
                  ? Colours.primaryColour
                  : Colors.grey,
            ),
            label: 'Chat',
            backgroundColor: Colors.white,
          ),
          BottomNavigationBarItem(
            icon: Icon(
              controller.currentIndex == 3
                  ? IconlyBold.profile
                  : IconlyLight.profile,
              color: controller.currentIndex == 3
                  ? Colours.primaryColour
                  : Colors.grey,
            ),
            label: 'User',
            backgroundColor: Colors.white,
          ),
        ],
      ),
    );
  }
}
