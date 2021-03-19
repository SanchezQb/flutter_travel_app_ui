import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:travelapp/constants.dart';

import 'home_page.dart';

class TabbedPage extends StatefulWidget {
  @override
  _TabbedPageState createState() => _TabbedPageState();
}

class _TabbedPageState extends State<TabbedPage> {
  int _currentIndex = 0;

  List _pages = [
    HomePage(),
    HomePage(),
    HomePage(),
    HomePage(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        items: tabItems(),
        type: BottomNavigationBarType.fixed,
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        unselectedItemColor: Colors.black,
        selectedItemColor: kPrimary,
        elevation: 0,
        backgroundColor: Colors.white,
      ),
    );
  }

  List<BottomNavigationBarItem> tabItems() {
    return <BottomNavigationBarItem>[
      BottomNavigationBarItem(
        icon: Icon(
          FlutterIcons.home_fou,
          size: 28,
        ),
        label: '',
      ),
      BottomNavigationBarItem(
        icon: Icon(
          FlutterIcons.search_fea,
          size: 28,
        ),
        label: '',
      ),
      BottomNavigationBarItem(
        icon: Icon(
          FlutterIcons.bookmark_faw5,
        ),
        label: '',
      ),
      BottomNavigationBarItem(
        icon: Icon(
          FlutterIcons.user_faw5,
        ),
        label: '',
      ),
    ];
  }
}

//user - fontawesome 5
//bookmark - fontawesome 5
//search - Feather
//home - foundation
