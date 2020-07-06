import 'package:five_three_one_forever_app/pages/hardgainer/week_two/hardgainer_bench_data_table.dart';
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
            percentage: 70,
            title: 'Shrugs',
            reps: '10 - 20',
            cbIndex1: 925,
            cbIndex2: 926,
            cbIndex3: 927,
            cbIndex4: 928,
            cbIndex5: 929,
          ),
          BodyWeightAssistance(
            liftIndex: 11,
            title: 'Push up',
            reps: '10 - 20',
            cbIndex1: 930,
            cbIndex2: 931,
            cbIndex3: 932,
            cbIndex4: 933,
            cbIndex5: 934,
          ),
          BodyWeightAssistance(
            liftIndex: 12,
            title: 'Abs',
            reps: '10 - 20',
            cbIndex1: 935,
            cbIndex2: 936,
            cbIndex3: 937,
            cbIndex4: 938,
            cbIndex5: 939,
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
