import 'package:five_three_one_forever_app/pages/building_the_monolith/week_one/btm_bench_data_table.dart';
import 'package:five_three_one_forever_app/pages/building_the_monolith/week_one/btm_deadlift_data_table.dart';

import 'package:five_three_one_forever_app/pages/conditioning.dart';

import 'package:five_three_one_forever_app/pages/warm_up_page.dart';

import 'package:five_three_one_forever_app/ui/model/contacts_model.dart';
import 'package:five_three_one_forever_app/widgets/bbb.dart';

import 'package:five_three_one_forever_app/widgets/route_tile.dart';
import 'package:flutter/material.dart';
import 'package:scoped_model/scoped_model.dart';

class BuildingTheMonolithDayTwoPage extends StatelessWidget {
  const BuildingTheMonolithDayTwoPage({
    Key key,
    this.lift,
    this.index,
    this.lift2,
    // this.liftTable,
    this.index2,
    this.twoLifts = false,
  }) : super(key: key);

  final String lift;
  final int index;
  final String lift2;
  final int index2;
  // final BPLiftDataTable liftTable;
  final bool twoLifts;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ScopedModelDescendant<ContactsModel>(
          builder: (context, child, model) {
        return ListView(
          children: <Widget>[
            RouteTile(title: 'Warm-up/Mobility', route: WarmUpPage()),

            // DataTableClass(),

            BTMDeadliftDataTable(
              index: index,
              lift: lift,
              checkIndex0: 214,
              checkIndex1: 215,
              checkIndex2: 216,
              checkIndex3: 217,
              checkIndex4: 218,
              checkIndex5: 219,
              checkIndex6: 220,
              checkIndex7: 221,
              checkIndex8: 222,
              checkIndex9: 223,
              fortyPercent: model.percentageOfTrainingMax(index, 40),
              fiftyPercent: model.percentageOfTrainingMax(index, 50),
              sixtyPercent: model.percentageOfTrainingMax(index, 60),
              seventyPercent: model.percentageOfTrainingMax(index, 70),
              eightyPercent: model.percentageOfTrainingMax(index, 80),
              ninetyPercent: model.percentageOfTrainingMax(index, 90),
              fslOne: model.percentageOfTrainingMax(index, 90),
              fslTwo: model.percentageOfTrainingMax(index, 90),
            ),

            BTMBenchDataTable(
              index2: index2,
              lift: lift2,
              checkIndex0: 224,
              checkIndex1: 225,
              checkIndex2: 226,
              checkIndex3: 227,
              checkIndex4: 228,
              checkIndex5: 229,
              checkIndex6: 230,
              checkIndex7: 231,
              checkIndex8: 232,
              checkIndex9: 233,
              // checkIndex10: 217,
              fortyPercent: model.percentageOfTrainingMax(index2, 40),
              fiftyPercent: model.percentageOfTrainingMax(index2, 50),
              sixtyPercent: model.percentageOfTrainingMax(index2, 60),
              seventyPercent: model.percentageOfTrainingMax(index2, 70),
              eightyPercent: model.percentageOfTrainingMax(index2, 80),
              ninetyPercent: model.percentageOfTrainingMax(index2, 90),
              fslOne: model.percentageOfTrainingMax(index2, 90),
              fslTwo: model.percentageOfTrainingMax(index2, 90),
              fslThree: model.percentageOfTrainingMax(index2, 90),
              fslFour: model.percentageOfTrainingMax(index2, 90),
            ),
            BBB(
              reps: '10-20',
              title: 'Row',
              liftIndex: 4,
              percentage: 70,
              cbIndex1: 596,
              cbIndex2: 597,
              cbIndex3: 598,
              cbIndex4: 599,
              cbIndex5: 600,
            ),
            BBB(
              reps: '20',
              title: 'Curls',
              liftIndex: 5,
              percentage: 45,
              cbIndex1: 601,
              cbIndex2: 602,
              cbIndex3: 603,
              cbIndex4: 604,
              cbIndex5: 605,
            ),

            RouteTile(
              title: 'Conditioning - 3-4 days of easy conditioning.',
              route: ConditioningPage(),
            ),
            Padding(padding: EdgeInsets.all(20)),
          ],
        );
      }),
    );
  }
}
