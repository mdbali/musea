import 'package:flutter/material.dart';
import 'package:musea/app/const/colors.dart';

// pages
import 'package:musea/app/pages/home.dart';

class MenuButtom extends StatefulWidget {
  const MenuButtom({ Key key }) : super(key: key);

  @override
  State<MenuButtom> createState() => _MenuButtomState();
}

class _MenuButtomState extends State<MenuButtom> {
  int _selectedIndex = 0;

  final List<Widget> _widgetOptions = <Widget>[
    const Home(),
    const Text('my list'),
    const Text('profile'),
  ];

  void _onItemTap(int index){
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        fixedColor: const MuseaColors().museaPrimary,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.place),
            label: 'Experience'
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: 'MyLists'
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile'
          ),
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTap,
      ),
    );
  }
}