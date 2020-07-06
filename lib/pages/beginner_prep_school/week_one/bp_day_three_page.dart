import 'package:five_three_one_forever_app/pages/assistance_page.dart';
import 'package:five_three_one_forever_app/pages/beginner_prep_school/week_one/bp_lift_data_table.dart';

import 'package:five_three_one_forever_app/pages/conditioning.dart';

import 'package:five_three_one_forever_app/pages/warm_up_page.dart';
import 'package:five_three_one_forever_app/ui/model/contacts_model.dart';

import 'package:five_three_one_forever_app/widgets/route_tile.dart';
import 'package:flutter/material.dart';
import 'package:scoped_model/scoped_model.dart';

class BeginnerPrepDayThreePage extends StatelessWidget {
  const BeginnerPrepDayThreePage({
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
              checkIndex0: 44,
              checkIndex1: 45,
              checkIndex2: 46,
              checkIndex3: 47,
              checkIndex4: 48,
              checkIndex5: 49,
              checkIndex6: 50,
              checkIndex7: 51,
              checkIndex8: 52,
              checkIndex9: 53,
              checkIndex10: 54,
              fortyPercent: model.percentageOfTrainingMax(index, 40),
              fiftyPercent: model.percentageOfTrainingMax(index, 50),
              sixtyPercent: model.percentageOfTrainingMax(index, 60),
              seventyPercent: model.percentageOfTrainingMax(index, 70),
              eightyPercent: model.percentageOfTrainingMax(index, 80),
              ninetyPercent: model.percentageOfTrainingMax(index, 90),
              fslOne: model.percentageOfTrainingMax(index, 70),
              fslTwo: model.percentageOfTrainingMax(index, 70),
              fslThree: model.percentageOfTrainingMax(index, 70),
              fslFour: model.percentageOfTrainingMax(index, 70),
              fslFive: model.percentageOfTrainingMax(index, 70),
            ),
            twoLifts
                ? Column(
                    children: <Widget>[
                      BPLiftDataTable(
                        index: index2,
                        lift: lift2,
                        checkIndex0: 55,
                        checkIndex1: 56,
                        checkIndex2: 57,
                        checkIndex3: 58,
                        checkIndex4: 59,
                        checkIndex5: 60,
                        checkIndex6: 61,
                        checkIndex7: 62,
                        checkIndex8: 63,
                        checkIndex9: 64,
                        checkIndex10: 65,
                        fortyPercent: model.percentageOfTrainingMax(index2, 40),
                        fiftyPercent: model.percentageOfTrainingMax(index2, 50),
                        sixtyPercent: model.percentageOfTrainingMax(index2, 60),
                        seventyPercent:
                            model.percentageOfTrainingMax(index2, 70),
                        eightyPercent:
                            model.percentageOfTrainingMax(index2, 80),
                        ninetyPercent:
                            model.percentageOfTrainingMax(index2, 90),
                        fslOne: model.percentageOfTrainingMax(index2, 70),
                        fslTwo: model.percentageOfTrainingMax(index2, 70),
                        fslThree: model.percentageOfTrainingMax(index2, 70),
                        fslFour: model.percentageOfTrainingMax(index2, 70),
                        fslFive: model.percentageOfTrainingMax(index2, 70),
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
