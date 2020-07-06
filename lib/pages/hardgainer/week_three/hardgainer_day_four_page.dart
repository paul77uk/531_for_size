import 'package:five_three_one_forever_app/pages/hardgainer/week_three/hardgainer_press_data_table.dart';
import 'package:five_three_one_forever_app/pages/warm_up_page.dart';
import 'package:five_three_one_forever_app/widgets/bbb.dart';
import 'package:five_three_one_forever_app/widgets/bodyweight_assistance.dart';
import 'package:five_three_one_forever_app/widgets/route_tile.dart';
import 'package:flutter/material.dart';

class HardgainerDayFourPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: <Widget>[
          RouteTile(title: 'Warm-up/Mobility', route: WarmUpPage()),
          HardgainerPressDataTable(),
          ListTile(title: Center(child: Text('Assistance'))),
          Divider(height: 0),
          BBB(
            liftIndex: 5,
            percentage: 75,
            title: 'Curl',
            reps: '10 - 20',
            cbIndex1: 1071,
            cbIndex2: 1072,
            cbIndex3: 1073,
            cbIndex4: 1074,
            cbIndex5: 1075,
          ),
          BodyWeightAssistance(
            liftIndex: 11,
            title: 'Push up',
            reps: '10 - 20',
            cbIndex1: 1076,
            cbIndex2: 1077,
            cbIndex3: 1078,
            cbIndex4: 1079,
            cbIndex5: 1080,
          ),
          Divider(height: 0),
          ListTile(
            title: Center(child: Text('Prowler or Sled – 20-30 minutes')),
            subtitle: Text(
                'If no sled, could do some sprints/ bike/ jump rope/ tabatas/ light circuit training'),
          ),
          Divider(),
          Padding(padding: EdgeInsets.all(18)),
        ],
      ),
    );
  }
}
