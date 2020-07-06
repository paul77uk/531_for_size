import 'package:five_three_one_forever_app/pages/hardgainer/week_three/hardgainer_bench_data_table.dart';
import 'package:five_three_one_forever_app/pages/warm_up_page.dart';
import 'package:five_three_one_forever_app/widgets/bbb.dart';
import 'package:five_three_one_forever_app/widgets/bodyweight_assistance.dart';
import 'package:five_three_one_forever_app/widgets/route_tile.dart';
import 'package:flutter/material.dart';

class HardgainerDayTwoPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: <Widget>[
          RouteTile(title: 'Warm-up/Mobility', route: WarmUpPage()),
          HardgainerBenchDataTable(),
          ListTile(title: Center(child: Text('Assistance'))),
          Divider(height: 0),
          BBB(
            liftIndex: 6,
            percentage: 75,
            title: 'Shrugs',
            reps: '10 - 20',
            cbIndex1: 1025,
            cbIndex2: 1026,
            cbIndex3: 1027,
            cbIndex4: 1028,
            cbIndex5: 1029,
          ),
          BodyWeightAssistance(
            liftIndex: 11,
            title: 'Push up',
            reps: '10 - 20',
            cbIndex1: 1030,
            cbIndex2: 1031,
            cbIndex3: 1032,
            cbIndex4: 1033,
            cbIndex5: 1034,
          ),
          BodyWeightAssistance(
            liftIndex: 12,
            title: 'Abs',
            reps: '10 - 20',
            cbIndex1: 1035,
            cbIndex2: 1036,
            cbIndex3: 1037,
            cbIndex4: 1038,
            cbIndex5: 1039,
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
