import 'package:five_three_one_forever_app/pages/assistance_page.dart';
import 'package:five_three_one_forever_app/pages/beginner_prep_school/week_one/bp_lift_data_table.dart';

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
              checkIndex0: 22,
              checkIndex1: 23,
              checkIndex2: 24,
              checkIndex3: 25,
              checkIndex4: 26,
              checkIndex5: 27,
              checkIndex6: 28,
              checkIndex7: 29,
              checkIndex8: 30,
              checkIndex9: 31,
              checkIndex10: 32,
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
                        checkIndex0: 33,
                        checkIndex1: 34,
                        checkIndex2: 35,
                        checkIndex3: 36,
                        checkIndex4: 37,
                        checkIndex5: 38,
                        checkIndex6: 39,
                        checkIndex7: 40,
                        checkIndex8: 41,
                        checkIndex9: 42,
                        checkIndex10: 43,
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
