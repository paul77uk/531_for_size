import 'package:five_three_one_forever_app/pages/boring_but_big_beefcake_training/week_one/bbbbt_week1.dart';
import 'package:five_three_one_forever_app/pages/boring_but_big_beefcake_training/week_three/bbbbt_week3.dart';
import 'package:five_three_one_forever_app/pages/boring_but_big_beefcake_training/week_two/bbbbt_week2.dart';
import 'package:five_three_one_forever_app/pages/landing_page.dart';
import 'package:five_three_one_forever_app/timer/main.dart';
import 'package:five_three_one_forever_app/widgets/launch_url.dart';

import 'package:flutter/material.dart';

class BoringButBigBeefCake extends StatefulWidget {
  @override
  _BoringButBigBeefCakeState createState() => _BoringButBigBeefCakeState();
}

class _BoringButBigBeefCakeState extends State<BoringButBigBeefCake>
    with SingleTickerProviderStateMixin {
  TabController _tabController;

  List<String> _tabs = ["WEEK 1", "WEEK 2", "WEEK 3"];

  void initState() {
    super.initState();
    _tabController = new TabController(vsync: this, length: _tabs.length);
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: LaunchUrl(
            url:
                'https://jimwendler.com/blogs/jimwendler-com/boring-but-big-beefcake-training',
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                Text('Boring But Big Beefcake'),
                Icon(Icons.link),
              ],
            )),
        bottom: TabBar(
          controller: _tabController,
          tabs: [
            Tab(text: 'WEEK 1'),
            Tab(text: 'WEEK 2'),
            Tab(text: 'WEEK 3'),
          ],
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: <Widget>[
          BoringButBigBeefcakeTraining1(),
          BoringButBigBeefcakeTraining2(),
          BoringButBigBeefcakeTraining3(),
        ],
      ),
      bottomSheet: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          IconButton(
            icon: Icon(Icons.home),
            onPressed: () => Navigator.push(
              context,
              MaterialPageRoute(
                fullscreenDialog: true,
                builder: (context) => LandingPage(),
              ),
            ),
          ),
          IconButton(
            icon: Icon(
              Icons.timer,
            ),
            onPressed: () => Navigator.push(
              context,
              MaterialPageRoute(
                fullscreenDialog: true,
                builder: (context) => TimerHomePage(),
              ),
            ),
          )
        ],
      ),
    );
  }
}
