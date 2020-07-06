import 'package:five_three_one_forever_app/pages/conditioning.dart';
import 'package:five_three_one_forever_app/pages/hardgainer/week_one/hardgainer_bench_data_table.dart';
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
            percentage: 65,
            title: 'Shrugs',
            reps: '10 - 20',
            cbIndex1: 815,
            cbIndex2: 816,
            cbIndex3: 817,
            cbIndex4: 818,
            cbIndex5: 819,
          ),
          BodyWeightAssistance(
            liftIndex: 11,
            title: 'Push up',
            reps: '10 - 20',
            cbIndex1: 820,
            cbIndex2: 821,
            cbIndex3: 822,
            cbIndex4: 823,
            cbIndex5: 824,
          ),
          BodyWeightAssistance(
            liftIndex: 12,
            title: 'Abs',
            reps: '10 - 20',
            cbIndex1: 825,
            cbIndex2: 826,
            cbIndex3: 827,
            cbIndex4: 828,
            cbIndex5: 829,
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
