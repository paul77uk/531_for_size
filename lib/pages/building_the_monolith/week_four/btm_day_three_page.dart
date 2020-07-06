import 'package:five_three_one_forever_app/pages/assistance_page.dart';
import 'package:five_three_one_forever_app/pages/boring_but_big_beefcake_training/assistance/ui/assistance_list_page.dart';
import 'package:five_three_one_forever_app/pages/boring_but_big_beefcake_training/widgets/assistance_total_reps1.dart';
import 'package:five_three_one_forever_app/pages/building_the_monolith/week_four/btm_press_data_table_day_three.dart';
import 'package:five_three_one_forever_app/pages/building_the_monolith/week_four/btm_squat_data_table_day_three.dart';

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
              checkIndex0: 402,
              checkIndex1: 403,
              checkIndex2: 404,
              checkIndex3: 405,
              checkIndex4: 406,
              checkIndex5: 407,
              checkIndex6: 408,
              fortyPercent: model.percentageOfTrainingMax(index, 40),
              fiftyPercent: model.percentageOfTrainingMax(index, 50),
              sixtyPercent: model.percentageOfTrainingMax(index, 60),
              seventyPercent: model.percentageOfTrainingMax(index, 70),
              eightyPercent: model.percentageOfTrainingMax(index, 80),
              ninetyPercent: model.percentageOfTrainingMax(index, 90),
              fortyFivePercent: model.percentageOfTrainingMax(index, 50),
            ),

            BTMPressDataTableDayThree(
              index2: index2,
              lift: lift2,
              checkIndex0: 409,
              checkIndex1: 410,
              checkIndex2: 411,
              checkIndex3: 412,
              checkIndex4: 413,
              checkIndex5: 414,
              checkIndex6: 415,
              checkIndex7: 416,
              checkIndex8: 417,
              checkIndex9: 418,
              checkIndex10: 419,
              checkIndex11: 420,
              checkIndex12: 421,
              checkIndex13: 422,
              checkIndex14: 423,
              fortyPercent: model.percentageOfTrainingMax(index2, 40),
              fiftyPercent: model.percentageOfTrainingMax(index2, 50),
              sixtyPercent: model.percentageOfTrainingMax(index2, 60),
              seventyPercent: model.percentageOfTrainingMax(index2, 60),
              eightyPercent: model.percentageOfTrainingMax(index2, 60),
              ninetyPercent: model.percentageOfTrainingMax(index2, 60),
              fslOne: model.percentageOfTrainingMax(index2, 60),
              fslTwo: model.percentageOfTrainingMax(index2, 60),
              fslThree: model.percentageOfTrainingMax(index2, 60),
              fslFour: model.percentageOfTrainingMax(index2, 60),
              fslFive: model.percentageOfTrainingMax(index2, 60),
              fslSix: model.percentageOfTrainingMax(index2, 60),
              fslSeven: model.percentageOfTrainingMax(index2, 60),
              fslEight: model.percentageOfTrainingMax(index2, 60),
              fslNine: model.percentageOfTrainingMax(index2, 60),
            ),
            BBB(
              reps: '20',
              title: 'Shrugs',
              liftIndex: 6,
              percentage: 70,
              cbIndex1: 680,
              cbIndex2: 681,
              cbIndex3: 682,
              cbIndex4: 683,
              cbIndex5: 684,
            ),
            ListTile(title: Center(child: Text('Assistance'))),
            AssistanceTotalReps1(
              exercise: 'Chins',
              reps: '100',
            ),
            BBB(
              title: 'Reverse Flys',
              liftIndex: 7,
              percentage: 50,
              reps: '20',
              cbIndex1: 685,
              cbIndex2: 686,
              cbIndex3: 687,
              cbIndex4: 688,
              cbIndex5: 689,
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
