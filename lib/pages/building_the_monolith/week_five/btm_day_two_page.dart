import 'package:five_three_one_forever_app/pages/assistance_page.dart';
import 'package:five_three_one_forever_app/pages/boring_but_big_beefcake_training/assistance/ui/assistance_list_page.dart';
import 'package:five_three_one_forever_app/pages/building_the_monolith/week_five/btm_bench_data_table.dart';
import 'package:five_three_one_forever_app/pages/building_the_monolith/week_five/btm_deadlift_data_table.dart';
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
              checkIndex0: 441,
              checkIndex1: 442,
              checkIndex2: 443,
              checkIndex3: 444,
              checkIndex4: 445,
              checkIndex5: 446,
              checkIndex6: 447,
              checkIndex7: 448,
              fortyPercent: model.percentageOfTrainingMax(index, 40),
              fiftyPercent: model.percentageOfTrainingMax(index, 50),
              sixtyPercent: model.percentageOfTrainingMax(index, 60),
              seventyPercent: model.percentageOfTrainingMax(index, 65),
              eightyPercent: model.percentageOfTrainingMax(index, 75),
              ninetyPercent: model.percentageOfTrainingMax(index, 85),
              fslOne: model.percentageOfTrainingMax(index, 85),
              fslTwo: model.percentageOfTrainingMax(index, 85),
            ),

            BTMBenchDataTable(
              index2: index2,
              lift: lift2,
              checkIndex0: 449,
              checkIndex1: 450,
              checkIndex2: 451,
              checkIndex3: 452,
              checkIndex4: 453,
              checkIndex5: 454,
              checkIndex6: 455,
              checkIndex7: 456,
              checkIndex8: 457,
              checkIndex9: 458,
              // checkIndex10: 217,
              fortyPercent: model.percentageOfTrainingMax(index2, 40),
              fiftyPercent: model.percentageOfTrainingMax(index2, 50),
              sixtyPercent: model.percentageOfTrainingMax(index2, 60),
              seventyPercent: model.percentageOfTrainingMax(index2, 65),
              eightyPercent: model.percentageOfTrainingMax(index2, 75),
              ninetyPercent: model.percentageOfTrainingMax(index2, 85),
              fslOne: model.percentageOfTrainingMax(index2, 85),
              fslTwo: model.percentageOfTrainingMax(index2, 85),
              fslThree: model.percentageOfTrainingMax(index2, 85),
              fslFour: model.percentageOfTrainingMax(index2, 85),
            ),
            BBB(
              reps: '10-20',
              title: 'Row',
              liftIndex: 4,
              percentage: 65,
              cbIndex1: 695,
              cbIndex2: 696,
              cbIndex3: 697,
              cbIndex4: 698,
              cbIndex5: 699,
            ),
            BBB(
              reps: '20',
              title: 'Curls',
              liftIndex: 5,
              percentage: 65,
              cbIndex1: 700,
              cbIndex2: 701,
              cbIndex3: 702,
              cbIndex4: 703,
              cbIndex5: 704,
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
