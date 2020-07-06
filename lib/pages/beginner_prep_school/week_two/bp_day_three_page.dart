import 'package:five_three_one_forever_app/pages/assistance_page.dart';
import 'package:five_three_one_forever_app/pages/beginner_prep_school/week_two/bp_lift_data_table.dart';

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
              checkIndex0: 110,
              checkIndex1: 111,
              checkIndex2: 112,
              checkIndex3: 113,
              checkIndex4: 114,
              checkIndex5: 115,
              checkIndex6: 116,
              checkIndex7: 117,
              checkIndex8: 118,
              checkIndex9: 119,
              checkIndex10: 120,
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
                        checkIndex0: 121,
                        checkIndex1: 122,
                        checkIndex2: 123,
                        checkIndex3: 124,
                        checkIndex4: 125,
                        checkIndex5: 126,
                        checkIndex6: 127,
                        checkIndex7: 128,
                        checkIndex8: 129,
                        checkIndex9: 130,
                        checkIndex10: 131,
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
