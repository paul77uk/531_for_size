import 'package:five_three_one_forever_app/pages/assistance_page.dart';
import 'package:five_three_one_forever_app/pages/boring_but_big_beefcake_training/assistance/ui/assistance_list_page.dart';
import 'package:five_three_one_forever_app/pages/building_the_monolith/week_three/btm_bench_data_table.dart';
import 'package:five_three_one_forever_app/pages/building_the_monolith/week_three/btm_deadlift_data_table.dart';
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
              checkIndex0: 329,
              checkIndex1: 330,
              checkIndex2: 331,
              checkIndex3: 332,
              checkIndex4: 333,
              checkIndex5: 334,
              checkIndex6: 335,
              checkIndex7: 336,
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
              checkIndex0: 337,
              checkIndex1: 338,
              checkIndex2: 339,
              checkIndex3: 340,
              checkIndex4: 341,
              checkIndex5: 342,
              checkIndex6: 343,
              checkIndex7: 344,
              checkIndex8: 345,
              checkIndex9: 346,
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
              cbIndex1: 646,
              cbIndex2: 647,
              cbIndex3: 648,
              cbIndex4: 649,
              cbIndex5: 650,
            ),
            BBB(
              reps: '20',
              title: 'Curls',
              liftIndex: 5,
              percentage: 55,
              cbIndex1: 651,
              cbIndex2: 652,
              cbIndex3: 653,
              cbIndex4: 654,
              cbIndex5: 655,
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
