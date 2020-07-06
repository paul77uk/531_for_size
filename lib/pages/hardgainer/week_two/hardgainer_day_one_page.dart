import 'package:five_three_one_forever_app/pages/conditioning.dart';
import 'package:five_three_one_forever_app/pages/hardgainer/week_two/hardgainer_squat_data_table.dart';
import 'package:five_three_one_forever_app/pages/warm_up_page.dart';
import 'package:five_three_one_forever_app/widgets/bodyweight_assistance.dart';
import 'package:five_three_one_forever_app/widgets/route_tile.dart';
import 'package:flutter/material.dart';

class HardgainerDayOnePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: <Widget>[
          RouteTile(title: 'Warm-up/Mobility', route: WarmUpPage()),
          HardgainerSquatDataTable(),
          ListTile(title: Center(child: Text('Assistance'))),
          Divider(height: 0),
          BodyWeightAssistance(
            liftIndex: 8,
            title: 'dips',
            reps: '10 - 20',
            cbIndex1: 902,
            cbIndex2: 903,
            cbIndex3: 904,
            cbIndex4: 905,
            cbIndex5: 906,
          ),
          BodyWeightAssistance(
            liftIndex: 9,
            title: 'chins',
            reps: '10 - 20',
            cbIndex1: 907,
            cbIndex2: 908,
            cbIndex3: 909,
            cbIndex4: 910,
            cbIndex5: 911,
          ),
          BodyWeightAssistance(
            liftIndex: 10,
            title: 'lunges',
            reps: '10 - 20',
            cbIndex1: 912,
            cbIndex2: 913,
            cbIndex3: 914,
            cbIndex4: 915,
            cbIndex5: 916,
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
