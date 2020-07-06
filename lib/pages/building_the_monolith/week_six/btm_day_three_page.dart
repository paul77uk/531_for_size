import 'package:five_three_one_forever_app/pages/assistance_page.dart';
import 'package:five_three_one_forever_app/pages/boring_but_big_beefcake_training/assistance/ui/assistance_list_page.dart';
import 'package:five_three_one_forever_app/pages/boring_but_big_beefcake_training/widgets/assistance_total_reps1.dart';
import 'package:five_three_one_forever_app/pages/building_the_monolith/week_six/btm_press_data_table_day_three.dart';
import 'package:five_three_one_forever_app/pages/building_the_monolith/week_six/btm_squat_data_table_day_three.dart';

import 'package:five_three_one_forever_app/pages/conditioning.dart';

import 'package:five_three_one_forever_app/pages/warm_up_page.dart';

import 'package:five_three_one_forever_app/ui/model/contacts_model.dart';
import 'package:five_three_one_forever_app/widgets/bbb.dart';

import 'package:five_three_one_forever_app/widgets/route_tile.dart';
import 'package:flutter/material.dart';
import 'package:scoped_model/scoped_model.dart';

class BuildingTheMonolithDayThreePage extends StatelessWidget {
  const BuildingTheMonolithDayThreePage({
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

            BTMSquatDataTableDayThree(
              index: index,
              lift: lift,
              checkIndex0: 518,
              checkIndex1: 519,
              checkIndex2: 520,
              checkIndex3: 521,
              checkIndex4: 522,
              checkIndex5: 523,
              checkIndex6: 524,
              fortyPercent: model.percentageOfTrainingMax(index, 40),
              fiftyPercent: model.percentageOfTrainingMax(index, 50),
              sixtyPercent: model.percentageOfTrainingMax(index, 60),
              seventyPercent: model.percentageOfTrainingMax(index, 75),
              eightyPercent: model.percentageOfTrainingMax(index, 85),
              ninetyPercent: model.percentageOfTrainingMax(index, 95),
              fortyFivePercent: model.percentageOfTrainingMax(index, 70),
            ),

            BTMPressDataTableDayThree(
              index2: index2,
              lift: lift2,
              checkIndex0: 525,
              checkIndex1: 526,
              checkIndex2: 527,
              checkIndex3: 528,
              checkIndex4: 529,
              checkIndex5: 530,
              checkIndex6: 531,
              checkIndex7: 532,
              checkIndex8: 533,
              checkIndex9: 534,
              checkIndex10: 535,
              checkIndex11: 536,
              checkIndex12: 537,
              checkIndex13: 538,
              checkIndex14: 539,
              // checkIndex15: 481,
              // checkIndex16: 482,
              // checkIndex17: 483,
              fortyPercent: model.percentageOfTrainingMax(index2, 40),
              fiftyPercent: model.percentageOfTrainingMax(index2, 50),
              sixtyPercent: model.percentageOfTrainingMax(index2, 60),
              seventyPercent: model.percentageOfTrainingMax(index2, 75),
              eightyPercent: model.percentageOfTrainingMax(index2, 75),
              ninetyPercent: model.percentageOfTrainingMax(index2, 75),
              fslOne: model.percentageOfTrainingMax(index2, 75),
              fslTwo: model.percentageOfTrainingMax(index2, 75),
              fslThree: model.percentageOfTrainingMax(index2, 75),
              fslFour: model.percentageOfTrainingMax(index2, 75),
              fslFive: model.percentageOfTrainingMax(index2, 75),
              fslSix: model.percentageOfTrainingMax(index2, 75),
              fslSeven: model.percentageOfTrainingMax(index2, 75),
              fslEight: model.percentageOfTrainingMax(index2, 75),
              fslNine: model.percentageOfTrainingMax(index2, 75),
            ),
            BBB(
              reps: '20',
              title: 'Shrugs',
              liftIndex: 6,
              percentage: 70,
              cbIndex1: 730,
              cbIndex2: 731,
              cbIndex3: 732,
              cbIndex4: 733,
              cbIndex5: 734,
            ),
            ListTile(title: Center(child: Text('Assistance'))),
            AssistanceTotalReps1(
              exercise: 'Chins',
              reps: '100',
            ),
            BBB(
              title: 'Reverse Flys',
              liftIndex: 7,
              percentage: 70,
              reps: '20',
              cbIndex1: 735,
              cbIndex2: 736,
              cbIndex3: 737,
              cbIndex4: 738,
              cbIndex5: 739,
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
