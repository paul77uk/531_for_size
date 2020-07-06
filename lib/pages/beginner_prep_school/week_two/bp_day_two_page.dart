import 'package:five_three_one_forever_app/pages/assistance_page.dart';
import 'package:five_three_one_forever_app/pages/beginner_prep_school/week_two/bp_lift_data_table.dart';

import 'package:five_three_one_forever_app/pages/conditioning.dart';

import 'package:five_three_one_forever_app/pages/warm_up_page.dart';
import 'package:five_three_one_forever_app/ui/model/contacts_model.dart';

import 'package:five_three_one_forever_app/widgets/route_tile.dart';
import 'package:flutter/material.dart';
import 'package:scoped_model/scoped_model.dart';

class BeginnerPrepDayTwoPage extends StatelessWidget {
  const BeginnerPrepDayTwoPage({
    Key key,
    this.lift,
    this.index,
    this.lift2,
    this.liftTable,
    this.index2,
    this.twoLifts = false,
  }) : super(key: key);

  final String lift;
  final int index;
  final String lift2;
  final int index2;
  final BPLiftDataTable liftTable;
  final bool twoLifts;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ScopedModelDescendant<ContactsModel>(
          builder: (context, child, model) {
        return ListView(
          children: <Widget>[
            RouteTile(title: 'Warm-up/Mobility', route: WarmUpPage()),
            RouteTile(title: 'Jump/Throws - 10-20 total'),
            // DataTableClass(),

            BPLiftDataTable(
              index: index,
              lift: lift,
              checkIndex0: 88,
              checkIndex1: 89,
              checkIndex2: 90,
              checkIndex3: 91,
              checkIndex4: 92,
              checkIndex5: 93,
              checkIndex6: 94,
              checkIndex7: 95,
              checkIndex8: 96,
              checkIndex9: 97,
              checkIndex10: 98,
              fortyPercent: model.percentageOfTrainingMax(index, 40),
              fiftyPercent: model.percentageOfTrainingMax(index, 50),
              sixtyPercent: model.percentageOfTrainingMax(index, 60),
              seventyPercent: model.percentageOfTrainingMax(index, 65),
              eightyPercent: model.percentageOfTrainingMax(index, 75),
              ninetyPercent: model.percentageOfTrainingMax(index, 85),
              fslOne: model.percentageOfTrainingMax(index, 65),
              fslTwo: model.percentageOfTrainingMax(index, 65),
              fslThree: model.percentageOfTrainingMax(index, 65),
              fslFour: model.percentageOfTrainingMax(index, 65),
              fslFive: model.percentageOfTrainingMax(index, 65),
            ),
            twoLifts
                ? Column(
                    children: <Widget>[
                      BPLiftDataTable(
                        index: index2,
                        lift: lift2,
                        checkIndex0: 99,
                        checkIndex1: 100,
                        checkIndex2: 101,
                        checkIndex3: 102,
                        checkIndex4: 103,
                        checkIndex5: 104,
                        checkIndex6: 105,
                        checkIndex7: 106,
                        checkIndex8: 107,
                        checkIndex9: 108,
                        checkIndex10: 109,
                        fortyPercent: model.percentageOfTrainingMax(index2, 40),
                        fiftyPercent: model.percentageOfTrainingMax(index2, 50),
                        sixtyPercent: model.percentageOfTrainingMax(index2, 60),
                        seventyPercent:
                            model.percentageOfTrainingMax(index2, 65),
                        eightyPercent:
                            model.percentageOfTrainingMax(index2, 75),
                        ninetyPercent:
                            model.percentageOfTrainingMax(index2, 85),
                        fslOne: model.percentageOfTrainingMax(index2, 65),
                        fslTwo: model.percentageOfTrainingMax(index2, 65),
                        fslThree: model.percentageOfTrainingMax(index2, 65),
                        fslFour: model.percentageOfTrainingMax(index2, 65),
                        fslFive: model.percentageOfTrainingMax(index2, 65),
                      ),
                      RouteTile(title: 'Assistance', route: AssistancePage()),
                    ],
                  )
                : RouteTile(
                    title: 'Assistance',
                    // \n\n• Push - 50-100 total reps.\n• Pull - 50-100 total reps.\n• Single Leg/Core - 50-100 total reps.',
                    route: AssistancePage()),

            RouteTile(
              title: 'Conditioning - 3-4 hard days of conditioning.',
              route: ConditioningPage(),
            ),
          ],
        );
      }),
    );
  }
}
