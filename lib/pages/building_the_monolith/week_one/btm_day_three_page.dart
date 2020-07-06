import 'package:five_three_one_forever_app/pages/assistance_page.dart';
import 'package:five_three_one_forever_app/pages/boring_but_big_beefcake_training/assistance/ui/assistance_list_page.dart';
import 'package:five_three_one_forever_app/pages/boring_but_big_beefcake_training/widgets/assistance_total_reps.dart';
import 'package:five_three_one_forever_app/pages/boring_but_big_beefcake_training/widgets/assistance_total_reps1.dart';
import 'package:five_three_one_forever_app/pages/building_the_monolith/week_one/btm_press_data_table_day_three.dart';
import 'package:five_three_one_forever_app/pages/building_the_monolith/week_one/btm_squat_data_table_day_three.dart';

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
              checkIndex0: 234,
              checkIndex1: 235,
              checkIndex2: 236,
              checkIndex3: 237,
              checkIndex4: 238,
              checkIndex5: 239,
              checkIndex6: 240,
              checkIndex7: 241,
              checkIndex8: 242,
              checkIndex9: 243,
              fortyPercent: model.percentageOfTrainingMax(index, 40),
              fiftyPercent: model.percentageOfTrainingMax(index, 50),
              sixtyPercent: model.percentageOfTrainingMax(index, 60),
              seventyPercent: model.percentageOfTrainingMax(index, 70),
              eightyPercent: model.percentageOfTrainingMax(index, 80),
              ninetyPercent: model.percentageOfTrainingMax(index, 90),
              fortyFivePercent: model.percentageOfTrainingMax(index, 45),
            ),

            BTMPressDataTableDayThree(
              index2: index2,
              lift: lift2,
              checkIndex0: 244,
              checkIndex1: 245,
              checkIndex2: 246,
              checkIndex3: 247,
              checkIndex4: 248,
              checkIndex5: 249,
              checkIndex6: 250,
              checkIndex7: 251,
              checkIndex8: 252,
              checkIndex9: 253,
              checkIndex10: 254,
              checkIndex11: 255,
              checkIndex12: 256,
              // checkIndex10: 217,
              fortyPercent: model.percentageOfTrainingMax(index2, 40),
              fiftyPercent: model.percentageOfTrainingMax(index2, 50),
              sixtyPercent: model.percentageOfTrainingMax(index2, 60),
              seventyPercent: model.percentageOfTrainingMax(index2, 70),
              eightyPercent: model.percentageOfTrainingMax(index2, 70),
              ninetyPercent: model.percentageOfTrainingMax(index2, 70),
              fslOne: model.percentageOfTrainingMax(index2, 70),
              fslTwo: model.percentageOfTrainingMax(index2, 70),
              fslThree: model.percentageOfTrainingMax(index2, 70),
              fslFour: model.percentageOfTrainingMax(index2, 70),
              fslFive: model.percentageOfTrainingMax(index2, 70),
              fslSix: model.percentageOfTrainingMax(index2, 70),
              fslSeven: model.percentageOfTrainingMax(index2, 70),
            ),
            BBB(
              reps: '20',
              title: 'Shrugs',
              liftIndex: 6,
              percentage: 45,
              cbIndex1: 606,
              cbIndex2: 607,
              cbIndex3: 608,
              cbIndex4: 609,
              cbIndex5: 610,
            ),
            ListTile(title: Center(child: Text('Assistance'))),
            AssistanceTotalReps1(
              exercise: 'Chins',
              reps: '100',
            ),
            BBB(
              title: 'Reverse Flys',
              liftIndex: 7,
              percentage: 45,
              reps: '20',
              cbIndex1: 611,
              cbIndex2: 612,
              cbIndex3: 613,
              cbIndex4: 614,
              cbIndex5: 615,
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
