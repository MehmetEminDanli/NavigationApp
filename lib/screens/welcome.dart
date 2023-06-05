import 'package:flutter/material.dart';
import 'package:sinav/main.dart';
import 'package:sinav/utils/mydrawer.dart';

class welcome extends StatefulWidget {
  const welcome({super.key});

  @override
  State<welcome> createState() => _welcomeState();
}

class _welcomeState extends State<welcome> {
  int _selectedindex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 35, fontWeight: FontWeight.normal);
  static const List<Widget> bodyList = <Widget>[
    Text(
      'Ana Sayfa',
      style: optionStyle,
    ),
    Text(
      'Kurumsal',
      style: optionStyle,
    ),
    Text(
      'İletişim',
      style: optionStyle,
    ),
    Text(
      'Ayarlar',
      style: optionStyle,
    ),
  ];

  void _ontap(int index) {
    setState(() {
      _selectedindex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_selectedindex == 0
            ? "Ana Sayfa"
            : _selectedindex == 1
                ? "Kurumsal"
                : _selectedindex == 2
                    ? "İletişim"
                    : _selectedindex == 3
                        ? "Ayarlar"
                        : ""),
      ),
      drawer: const MyDrawer(),
      body: Center(
        child: bodyList.elementAt(_selectedindex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Ana Sayfa',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.business_center),
            label: 'Kurumsal',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.phone_android),
            label: 'iletişim',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Settings',
          ),
        ],
        currentIndex: _selectedindex,
        selectedItemColor: Colors.green,
        unselectedItemColor: Colors.grey,
        onTap: _ontap,
      ),
    );
  }
}
