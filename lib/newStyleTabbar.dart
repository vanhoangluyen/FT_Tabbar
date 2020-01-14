import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class NewStyleTabbarController extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return NewHomeState();
  }
}

class NewHomeState extends State<NewStyleTabbarController> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          title: Text('New Style Tabbar'),
          backgroundColor: Colors.blue,
        ),
        bottomNavigationBar: bottomTabbar(),
        body: TabBarView(children: [
          Container(child: Icon(Icons.directions_car)),
          Container(child: Icon(Icons.directions_transit)),
          Container(child: Icon(Icons.directions_bike)),
          Container(child: Icon(Icons.directions_bike)),
        ]),
      ),
    );
  }
}

Widget bottomTabbar() {
  return Container(
    color: Color(0xFF3F5AA6),
    child: TabBar(
      labelColor: Colors.white,
      unselectedLabelColor: Colors.white70,
      indicatorSize: TabBarIndicatorSize.tab,
      indicatorPadding: EdgeInsets.all(5.0),
      indicatorColor: Colors.blue,
      tabs: <Widget>[
        Tab(
          text: 'Home',
          icon: Icon(Icons.home),
        ),
        Tab(
          text: 'Message',
          icon: Icon(Icons.mail),
        ),
        Tab(
          text: 'Profile',
          icon: Icon(Icons.person),
        )
      ],
    ),
  );
}
