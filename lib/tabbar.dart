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
    HomeScreeen(),
    ChildController(Colors.green),
    ChildController(Colors.blue)
  ];
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('Tabbar Controller'),
        backgroundColor: Colors.lightBlueAccent,
      ),
      body: children[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        onTap: onTapped,
        selectedItemColor: Colors.amber,
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

class HomeScreeen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      child: Center(
        child: RaisedButton(
          child: Text('Send Data'),
          onPressed: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => DetailHomeScreen('Hello World')));
          },
        ),
      ),
    );
  }
}

class DetailHomeScreen extends StatelessWidget {
  final String inforReceive;
  DetailHomeScreen(this.inforReceive);
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.grey,
        appBar: AppBar(
          title: Text('Detail Home'),
          leading: IconButton(
            icon: Icon(Icons.arrow_back_ios),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ),
        body: Container(
          child: Center(
            child: Text(
              inforReceive,
              style: TextStyle(color: Colors.yellow),
            ),
          ),
        ),
      ),
    );
  }
}
