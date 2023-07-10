import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';
import 'HomeScreen.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int selectedIndex = 0;

  void onTapNavBar(int index){
    setState(() {
      selectedIndex = index;
    });
    print(selectedIndex.toString());
  }

  static const List<Widget> body = <Widget> [
    HomeScreen(title: 'Home'),
    Text('screen 2'),
    Text('screen 3'),
    Text('screen 4'),
    Text('screen 5')
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: body.elementAt(selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(items: const <BottomNavigationBarItem> [
        BottomNavigationBarItem( icon:Icon(IconlyLight.home), 
          label: 'home',
          activeIcon: Icon(IconlyBold.home,),
        ),
        BottomNavigationBarItem(
          icon: Icon(IconlyLight.discovery), 
          label: 'explore',
          activeIcon: Icon(IconlyBold.discovery) 
        ),
        BottomNavigationBarItem(
          icon:  Icon(Icons.map_outlined), 
          label: 'map',
          activeIcon: Icon(Icons.map)
        ),
        BottomNavigationBarItem(
          icon:  Icon(IconlyLight.notification), 
          label: 'notification',
          activeIcon: Icon(IconlyBold.notification)
        ),
        BottomNavigationBarItem(icon: Icon(IconlyLight.setting), label: 'settings', activeIcon: Icon(IconlyBold.setting))
      ],
      onTap: onTapNavBar,
      currentIndex: selectedIndex,
      showSelectedLabels: false,
      showUnselectedLabels: false,
      type: BottomNavigationBarType.fixed,
      ),
    );
  }
}