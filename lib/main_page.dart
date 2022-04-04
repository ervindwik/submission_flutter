import 'package:flutter/material.dart';
import 'home/home.dart' as home;
import 'profile/profile.dart' as profile;

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage>
    with SingleTickerProviderStateMixin {
  late TabController controller;

  @override
  void initState() {
    controller = TabController(vsync: this, length: 2);
    super.initState();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Material(
        elevation: 10,
        color: Colors.white,
        child: TabBar(
          controller: controller,
          tabs: <Widget>[
            Tab(
                icon: Icon(
              Icons.home,
              size: 35,
            )),
            Tab(
              icon: Icon(
                Icons.person,
                size: 35,
              ),
            ),
          ],
          labelColor: Color(0xFFFA2EEAF),
          unselectedLabelColor: Colors.black,
          indicatorColor: Colors.black,
          indicatorSize: TabBarIndicatorSize.label,
        ),
      ),
      body: TabBarView(
        controller: controller,
        children: <Widget>[
          home.Home(),
          profile.Profile(),
        ],
      ),
    );
  }
}
