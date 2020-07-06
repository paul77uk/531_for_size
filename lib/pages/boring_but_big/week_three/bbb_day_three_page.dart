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

class BoringButBigDayThreePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScopedModelDescendant<ContactsModel>(
        builder: (context, child, model) {
      int ex1SavedIndex = model.exerciseindexClass[20].exerciseIndex;

      int ex2SavedIndex = model.exerciseindexClass[21].exerciseIndex;
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
                cbIndex1: 319,
                cbIndex2: 320,
                cbIndex3: 321,
                cbIndex4: 322,
                cbIndex5: 323,
                cbIndex6: 324,
                cbIndex7: 325,
                cbIndex8: 326,
                cbIndex9: 327,
                cbIndex10: 328,
                cbIndex11: 329,
                rep1: '5',
                rep2: '5',
                rep3: '5+',
                liftIndexEx: 20,
              ),
            ),
            model.contacts[ex1SavedIndex].trainingMax == 'BW'
                ? BodyWeightAssistance(
                    title: '5 x 10',
                    liftIndex: ex1SavedIndex,
                    reps: '10',
                    cbIndex1: 336,
                    cbIndex2: 337,
                    cbIndex3: 338,
                    cbIndex4: 339,
                    cbIndex5: 340,
                  )
                : Column(
                    children: <Widget>[
                      WarmUp(
                        liftIndex: 1,
                        cbIndex1: 330,
                        cbIndex2: 331,
                        cbIndex3: 332,
                      ),
                      FiveThreeOnePrSet(
                        title: '531',
                        liftIndex: ex1SavedIndex,
                        percentage1: 75,
                        percentage2: 85,
                        percentage3: 95,
                        cbIndex1: 333,
                        cbIndex2: 334,
                        cbIndex3: 335,
                        reps1: '5',
                        reps2: '5',
                        reps3: '5+',
                      ),
                      BBB(
                        title: 'BBB',
                        liftIndex: ex1SavedIndex,
                        percentage: 50,
                        reps: '10',
                        cbIndex1: 336,
                        cbIndex2: 337,
                        cbIndex3: 338,
                        cbIndex4: 339,
                        cbIndex5: 340,
                      ),
                    ],
                  ),
            RouteTile(
                title: model.contacts[ex2SavedIndex].lift,
                route: Alternative5x10(
                  cbIndex1: 341,
                  cbIndex2: 342,
                  cbIndex3: 343,
                  cbIndex4: 344,
                  cbIndex5: 345,
                  liftIndexEx: 21,
                )),
            model.contacts[ex2SavedIndex].trainingMax == 'BW'
                ? BodyWeightAssistance(
                    title: '5 x 10',
                    liftIndex: 18,
                    reps: '10',
                    cbIndex1: 346,
                    cbIndex2: 347,
                    cbIndex3: 348,
                    cbIndex4: 349,
                    cbIndex5: 350,
                  )
                : BBB(
                    title: '5 x 10',
                    liftIndex: ex2SavedIndex,
                    percentage: 50,
                    reps: '10',
                    cbIndex1: 346,
                    cbIndex2: 347,
                    cbIndex3: 348,
                    cbIndex4: 349,
                    cbIndex5: 350,
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

                  model.setDayIndex(3);
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
