import 'package:auto_route/auto_route.dart';
import 'package:dot_navigation_bar/dot_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:repair/route/router.gr.dart';

class BottomNavPage extends StatefulWidget {
  const BottomNavPage({super.key});

  @override
  State<BottomNavPage> createState() => _BottomNavPageState();
}

class _BottomNavPageState extends State<BottomNavPage> {
  @override
  Widget build(BuildContext context) {
    return AutoTabsScaffold(
        extendBody: true,
        backgroundColor: Colors.transparent,
        routes: const [
          ClientPageRouter(),
          EmployeePageRouter(),
        ],
        bottomNavigationBuilder: (_, tabsRouter) {
          return DotNavigationBar(
            marginR: const EdgeInsets.symmetric(
              horizontal: 20,
              vertical: 20,
            ),
            borderRadius: 25,
            enableFloatingNavBar: true,
            backgroundColor: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.2),
                spreadRadius: 5,
                blurRadius: 7,
                offset: const Offset(0, 3), // changes position of shadow
              ),
            ],
            dotIndicatorColor: const Color(0xFF004E8F),
            selectedItemColor: const Color(0xFF004E8F),
            unselectedItemColor: Colors.black,
            currentIndex: tabsRouter.activeIndex,
            onTap: tabsRouter.setActiveIndex,
            items: [
              //camps
              DotNavigationBarItem(
                icon: const Icon(Icons.person),
                selectedColor: const Color(0xFF004E8F),
              ),
              //chat
              DotNavigationBarItem(
                icon: const Icon(Icons.device_hub),
                selectedColor: const Color(0xFF004E8F),
              ),

              //map
            ],
          );
        });
  }
}
