import 'package:five_three_one_forever_app/pages/assistance_page.dart';
import 'package:five_three_one_forever_app/pages/boring_but_big_beefcake_training/assistance/ui/assistance_list_page.dart';
import 'package:five_three_one_forever_app/pages/building_the_monolith/week_six/btm_bench_data_table.dart';
import 'package:five_three_one_forever_app/pages/building_the_monolith/week_six/btm_deadlift_data_table.dart';
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
              checkIndex0: 500,
              checkIndex1: 501,
              checkIndex2: 502,
              checkIndex3: 503,
              checkIndex4: 504,
              checkIndex5: 505,
              checkIndex6: 506,
              checkIndex7: 507,
              fortyPercent: model.percentageOfTrainingMax(index, 40),
              fiftyPercent: model.percentageOfTrainingMax(index, 50),
              sixtyPercent: model.percentageOfTrainingMax(index, 60),
              seventyPercent: model.percentageOfTrainingMax(index, 75),
              eightyPercent: model.percentageOfTrainingMax(index, 85),
              ninetyPercent: model.percentageOfTrainingMax(index, 95),
              fslOne: model.percentageOfTrainingMax(index, 95),
              fslTwo: model.percentageOfTrainingMax(index, 95),
            ),

            BTMBenchDataTable(
              index2: index2,
              lift: lift2,
              checkIndex0: 508,
              checkIndex1: 509,
              checkIndex2: 510,
              checkIndex3: 511,
              checkIndex4: 512,
              checkIndex5: 513,
              checkIndex6: 514,
              checkIndex7: 515,
              checkIndex8: 516,
              checkIndex9: 517,
              // checkIndex10: 217,
              fortyPercent: model.percentageOfTrainingMax(index2, 40),
              fiftyPercent: model.percentageOfTrainingMax(index2, 50),
              sixtyPercent: model.percentageOfTrainingMax(index2, 60),
              seventyPercent: model.percentageOfTrainingMax(index2, 75),
              eightyPercent: model.percentageOfTrainingMax(index2, 85),
              ninetyPercent: model.percentageOfTrainingMax(index2, 95),
              fslOne: model.percentageOfTrainingMax(index2, 95),
              fslTwo: model.percentageOfTrainingMax(index2, 95),
              fslThree: model.percentageOfTrainingMax(index2, 95),
              fslFour: model.percentageOfTrainingMax(index2, 95),
            ),

            BBB(
              reps: '10-20',
              title: 'Row',
              liftIndex: 4,
              percentage: 75,
              cbIndex1: 720,
              cbIndex2: 721,
              cbIndex3: 722,
              cbIndex4: 723,
              cbIndex5: 724,
            ),
            BBB(
              reps: '20',
              title: 'Curls',
              liftIndex: 5,
              percentage: 70,
              cbIndex1: 725,
              cbIndex2: 726,
              cbIndex3: 727,
              cbIndex4: 728,
              cbIndex5: 729,
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
