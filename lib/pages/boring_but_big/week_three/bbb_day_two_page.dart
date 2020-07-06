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

class BoringButBigDayTwoPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScopedModelDescendant<ContactsModel>(
        builder: (context, child, model) {
      int ex1SavedIndex = model.exerciseindexClass[18].exerciseIndex;

      int ex2SavedIndex = model.exerciseindexClass[19].exerciseIndex;
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
                cbIndex1: 287,
                cbIndex2: 288,
                cbIndex3: 289,
                cbIndex4: 290,
                cbIndex5: 291,
                cbIndex6: 292,
                cbIndex7: 293,
                cbIndex8: 294,
                cbIndex9: 295,
                cbIndex10: 296,
                cbIndex11: 297,
                rep1: '5',
                rep2: '5',
                rep3: '5+',
                liftIndexEx: 18,
              ),
            ),
            model.contacts[ex1SavedIndex].trainingMax == 'BW'
                ? BodyWeightAssistance(
                    title: '5 x 10',
                    liftIndex: ex1SavedIndex,
                    reps: '10',
                    cbIndex1: 301,
                    cbIndex2: 302,
                    cbIndex3: 303,
                    cbIndex4: 304,
                    cbIndex5: 305,
                  )
                : Column(
                    children: <Widget>[
                      WarmUp(
                        liftIndex: ex1SavedIndex,
                        cbIndex1: 298,
                        cbIndex2: 299,
                        cbIndex3: 300,
                      ),
                      FiveThreeOnePrSet(
                        title: '531',
                        liftIndex: ex1SavedIndex,
                        percentage1: 75,
                        percentage2: 85,
                        percentage3: 95,
                        cbIndex1: 301,
                        cbIndex2: 302,
                        cbIndex3: 303,
                        reps1: '5',
                        reps2: '5',
                        reps3: '5+',
                      ),
                      BBB(
                        title: 'BBB',
                        liftIndex: ex1SavedIndex,
                        percentage: 50,
                        reps: '10',
                        cbIndex1: 304,
                        cbIndex2: 305,
                        cbIndex3: 306,
                        cbIndex4: 307,
                        cbIndex5: 308,
                      ),
                    ],
                  ),
            RouteTile(
                title: model.contacts[ex2SavedIndex].lift,
                route: Alternative5x10(
                  cbIndex1: 309,
                  cbIndex2: 310,
                  cbIndex3: 311,
                  cbIndex4: 312,
                  cbIndex5: 313,
                  liftIndexEx: 19,
                )),
            model.contacts[ex2SavedIndex].trainingMax == 'BW'
                ? BodyWeightAssistance(
                    title: '5 x 10',
                    liftIndex: 18,
                    reps: '10',
                    cbIndex1: 314,
                    cbIndex2: 315,
                    cbIndex3: 316,
                    cbIndex4: 317,
                    cbIndex5: 318,
                  )
                : BBB(
                    title: '5 x 10',
                    liftIndex: ex2SavedIndex,
                    percentage: 50,
                    reps: '10',
                    cbIndex1: 314,
                    cbIndex2: 315,
                    cbIndex3: 316,
                    cbIndex4: 317,
                    cbIndex5: 318,
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

                  model.setDayIndex(2);
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
