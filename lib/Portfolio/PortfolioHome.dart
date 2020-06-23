import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:portfolio/Portfolio/Home/Home.dart';
import 'package:portfolio/Portfolio/Projects/Projects.dart';
import 'package:portfolio/Portfolio/Skills/Skills.dart';
import 'package:portfolio/Portfolio/WorkExperience/Work.dart';


class PortfolioHome extends StatefulWidget {
  @override
  _PortfolioHomeState createState() => _PortfolioHomeState();
}

class _PortfolioHomeState extends State<PortfolioHome> {
  int _selectedIndex = 0;

  static const List<Widget> _widgetOptions = <Widget>[
    MyHome(),
    Project(),
    Skills(),
    Works(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        title: Center(
            child: Text(
          'Lalit M Portfolio',
        )),
      ),
      body: Container(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        elevation: 10.0,
        unselectedItemColor: Colors.black,
        items: <BottomNavigationBarItem>[
          buildBottomNavigationBarItem(AntDesign.home, 'Home'),
          buildBottomNavigationBarItem(Octicons.project, 'Project'),
          buildBottomNavigationBarItem(Foundation.social_skillshare, 'Skills'),
          buildBottomNavigationBarItem(Feather.briefcase, 'Work Experience'),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.indigo[300],
        onTap: _onItemTapped,
      ),
    );
  }

  BottomNavigationBarItem buildBottomNavigationBarItem(IconData icon, String text) {
    return BottomNavigationBarItem(
          icon: Icon(icon),
          title: Text(text),
        );
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
}
