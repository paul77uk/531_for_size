import 'package:five_three_one_forever_app/pages/assistance_page.dart';
import 'package:five_three_one_forever_app/pages/boring_but_big_beefcake_training/assistance/ui/assistance_list_page.dart';

import 'package:five_three_one_forever_app/pages/building_the_monolith/week_four/btm_bench_data_table.dart';
import 'package:five_three_one_forever_app/pages/building_the_monolith/week_four/btm_deadlift_data_table.dart';
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
              checkIndex0: 384,
              checkIndex1: 385,
              checkIndex2: 386,
              checkIndex3: 387,
              checkIndex4: 388,
              checkIndex5: 389,
              checkIndex6: 390,
              checkIndex7: 391,
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
              checkIndex0: 392,
              checkIndex1: 393,
              checkIndex2: 394,
              checkIndex3: 395,
              checkIndex4: 396,
              checkIndex5: 397,
              checkIndex6: 398,
              checkIndex7: 399,
              checkIndex8: 400,
              checkIndex9: 401,
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
              cbIndex1: 670,
              cbIndex2: 671,
              cbIndex3: 672,
              cbIndex4: 673,
              cbIndex5: 674,
            ),
            BBB(
              reps: '20',
              title: 'Curls',
              liftIndex: 5,
              percentage: 50,
              cbIndex1: 675,
              cbIndex2: 676,
              cbIndex3: 677,
              cbIndex4: 678,
              cbIndex5: 679,
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
