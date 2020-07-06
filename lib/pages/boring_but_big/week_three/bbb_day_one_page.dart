import 'package:five_three_one_forever_app/pages/boring_but_big/boring_but_big_week_page.dart';
import 'package:five_three_one_forever_app/pages/warm_up_page.dart';
import 'package:five_three_one_forever_app/ui/model/contacts_model.dart';
import 'package:five_three_one_forever_app/widgets/alternative_531_pr_and_bbb.dart';
import 'package:five_three_one_forever_app/widgets/alternative_5x10.dart';
import 'package:five_three_one_forever_app/widgets/bbb.dart';
import 'package:five_three_one_forever_app/widgets/bodyweight_assistance.dart';

import 'package:five_three_one_forever_app/widgets/five_three_one_pr_set.dart';
import 'package:five_three_one_forever_app/widgets/route_tile.dart';
import 'package:five_three_one_forever_app/widgets/warm_up.dart';
import 'package:flutter/material.dart';
import 'package:scoped_model/scoped_model.dart';

class BoringButBigDayOnePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScopedModelDescendant<ContactsModel>(
        builder: (context, child, model) {
      int ex1SavedIndex = model.exerciseindexClass[16].exerciseIndex;

      int ex2SavedIndex = model.exerciseindexClass[17].exerciseIndex;
      return Scaffold(
        body: ListView(
          children: <Widget>[
            RouteTile(title: 'Warm-up/Mobility', route: WarmUpPage()),
            RouteTile(
              title: model.contacts[ex1SavedIndex].lift,
              route: Alternative531PRAndBBB(
                percentage1: 75,
                percentage2: 85,
                percentage3: 95,
                cbIndex1: 255,
                cbIndex2: 256,
                cbIndex3: 257,
                cbIndex4: 258,
                cbIndex5: 259,
                cbIndex6: 260,
                cbIndex7: 261,
                cbIndex8: 262,
                cbIndex9: 263,
                cbIndex10: 264,
                cbIndex11: 265,
                rep1: '5',
                rep2: '5',
                rep3: '5+',
                liftIndexEx: 16,
              ),
            ),
            model.contacts[ex1SavedIndex].trainingMax == 'BW'
                ? BodyWeightAssistance(
                    title: '5 x 10',
                    liftIndex: ex1SavedIndex,
                    reps: '10',
                    cbIndex1: 272,
                    cbIndex2: 273,
                    cbIndex3: 274,
                    cbIndex4: 275,
                    cbIndex5: 276,
                  )
                : Column(
                    children: <Widget>[
                      WarmUp(
                        liftIndex: ex1SavedIndex,
                        cbIndex1: 266,
                        cbIndex2: 267,
                        cbIndex3: 268,
                      ),
                      FiveThreeOnePrSet(
                        title: '531',
                        liftIndex: ex1SavedIndex,
                        percentage1: 75,
                        percentage2: 85,
                        percentage3: 95,
                        cbIndex1: 269,
                        cbIndex2: 270,
                        cbIndex3: 271,
                        reps1: '5',
                        reps2: '5',
                        reps3: '5+',
                      ),
                      BBB(
                        title: 'BBB',
                        liftIndex: ex1SavedIndex,
                        percentage: 50,
                        reps: '10',
                        cbIndex1: 272,
                        cbIndex2: 273,
                        cbIndex3: 274,
                        cbIndex4: 275,
                        cbIndex5: 276,
                      ),
                    ],
                  ),
            RouteTile(
                title: model.contacts[ex2SavedIndex].lift,
                route: Alternative5x10(
                  cbIndex1: 277,
                  cbIndex2: 278,
                  cbIndex3: 279,
                  cbIndex4: 280,
                  cbIndex5: 281,
                  liftIndexEx: 17,
                )),
            model.contacts[ex2SavedIndex].trainingMax == 'BW'
                ? BodyWeightAssistance(
                    title: ' 5 x 10',
                    liftIndex: ex2SavedIndex,
                    reps: '10',
                    cbIndex1: 282,
                    cbIndex2: 283,
                    cbIndex3: 284,
                    cbIndex4: 285,
                    cbIndex5: 286,
                  )
                : BBB(
                    title: '5 x 10',
                    liftIndex: ex2SavedIndex,
                    percentage: 50,
                    reps: '10',
                    cbIndex1: 282,
                    cbIndex2: 283,
                    cbIndex3: 284,
                    cbIndex4: 285,
                    cbIndex5: 286,
                  ),
            Center(
              child: RaisedButton(
                color: ThemeData.dark().accentColor,
                child: Text(
                  'Day Completed',
                  style: TextStyle(color: ThemeData.dark().primaryColor),
                ),
                onPressed: () {
                  model.setWeekIndex(2);
                  model.getWeekIndex();

                  model.setDayIndex(1);
                  model.getDayIndex();

                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>
                            BoringButBig(weekIndex: model.getmWeekIndex)),
                  );
                },
              ),
            ),
            Divider(),
            Padding(padding: EdgeInsets.all(18)),
          ],
        ),
      );
    });
  }
}
