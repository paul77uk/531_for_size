import 'package:five_three_one_forever_app/pages/boring_but_big_beefcake_training/week_one/bbbbt_press_data_table.dart';
import 'package:five_three_one_forever_app/pages/boring_but_big_beefcake_training/widgets/assistance_total_reps.dart';
import 'package:five_three_one_forever_app/pages/conditioning.dart';
import 'package:five_three_one_forever_app/pages/warm_up_page.dart';
import 'package:five_three_one_forever_app/widgets/route_tile.dart';
import 'package:flutter/material.dart';

class BoringButBigBeefcakeTrainingDayTwoPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: <Widget>[
          RouteTile(title: 'Warm-up/Mobility', route: WarmUpPage()),
          BBBBTPressDataTable(),
          ListTile(title: Center(child: Text('Assistance'))),
          Divider(height: 0),
          AssistanceTotalReps(
            exercise: 'Ab Work',
            reps: '50',
            exercise2: 'single leg work',
            reps2: '25/leg',
          ),
          Divider(height: 0),
          RouteTile(
            title: 'Conditioning - 3-4 days of easy conditioning.',
            route: ConditioningPage(),
          ),
          Divider(),
          Padding(padding: EdgeInsets.all(18)),
        ],
      ),
    );
  }
}
