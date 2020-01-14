import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TabbarController extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return HomeState();
  }
}

class HomeState extends State<TabbarController> {
  int currentIndex = 0;
  final List<Widget> children = [
    ChildController(Colors.red),
    ChildController(Colors.green),
    ChildController(Colors.blue)
  ];
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('Tabbar Controller'),
      ),
      body: children[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        onTap: onTapped,
        currentIndex: currentIndex,
        items: [
          BottomNavigationBarItem(title: Text('Home'), icon: Icon(Icons.home)),
          BottomNavigationBarItem(
              title: Text('Message'), icon: Icon(Icons.mail)),
          BottomNavigationBarItem(
              title: Text('Profile'), icon: Icon(Icons.person))
        ],
      ),
    );
  }

  void onTapped(int index) {
    setState(() {
      currentIndex = index;
    });
  }
}

class ChildController extends StatelessWidget {
  final Color color;
  ChildController(this.color);
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      color: color,
    );
  }
}
