import 'package:five_three_one_forever_app/pages/building_a_bigger_yoke/week_one/building_a_bigger_yoke_week1.dart';
import 'package:five_three_one_forever_app/pages/building_a_bigger_yoke/week_three/building_a_bigger_yoke_week3.dart';
import 'package:five_three_one_forever_app/pages/building_a_bigger_yoke/week_two/building_a_bigger_yoke_week2.dart';
import 'package:five_three_one_forever_app/ui/contacts_list/rep_max_list_page.dart';
import 'package:five_three_one_forever_app/widgets/launch_url.dart';

import 'package:flutter/material.dart';

class BuildingABiggerYoke extends StatefulWidget {
  @override
  _BuildingABiggerYokeState createState() => _BuildingABiggerYokeState();
}

class _BuildingABiggerYokeState extends State<BuildingABiggerYoke>
    with SingleTickerProviderStateMixin {
  TabController _tabController;

  List<String> _tabs = ["WK\n1", "WK\n2", "WK\n3"];

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
                'https://jimwendler.com/blogs/jimwendler-com/building-a-bigger-yoke',
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                Text('Building A Bigger Yoke'),
                Icon(Icons.link),
              ],
            )),
        bottom: TabBar(
          controller: _tabController,
          tabs: [
            Tab(text: 'WEEK\n     1'),
            Tab(text: 'WEEK\n     2'),
            Tab(text: 'WEEK\n     3'),
          ],
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: <Widget>[
          BuildingABiggerYokeWeek1(),
          BuildingABiggerYokeWeek2(),
          BuildingABiggerYokeWeek3(),
        ],
      ),
      bottomSheet: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          IconButton(
            icon: Icon(Icons.home),
            onPressed: () => Navigator.popUntil(
                context, ModalRoute.withName(Navigator.defaultRouteName)),
          ),
          IconButton(
            icon: Icon(
              Icons.fitness_center,
            ),
            onPressed: () => Navigator.push(
              context,
              MaterialPageRoute(
                fullscreenDialog: true,
                builder: (context) => RepMaxPage(),
              ),
            ),
          )
        ],
      ),
    );
  }
}
