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

class BoringButBigDayFourPage extends StatelessWidget {
  Widget build(BuildContext context) {
    return ScopedModelDescendant<ContactsModel>(
        builder: (context, child, model) {
      int ex1SavedIndex = model.exerciseindexClass[6].exerciseIndex;

      int ex2SavedIndex = model.exerciseindexClass[7].exerciseIndex;
      return Scaffold(
        body: ListView(
          children: <Widget>[
            RouteTile(title: 'Warm-up/Mobility', route: WarmUpPage()),
            RouteTile(
              title: model.contacts[ex1SavedIndex].lift,
              route: Alternative531PRAndBBB(
                percentage1: 65,
                percentage2: 75,
                percentage3: 85,
                cbIndex1: 97,
                cbIndex2: 98,
                cbIndex3: 99,
                cbIndex4: 100,
                cbIndex5: 101,
                cbIndex6: 102,
                cbIndex7: 103,
                cbIndex8: 104,
                cbIndex9: 105,
                cbIndex10: 106,
                cbIndex11: 107,
                rep1: '5',
                rep2: '5',
                rep3: '5+',
                liftIndexEx: 6,
              ),
            ),
            model.contacts[ex1SavedIndex].trainingMax == 'BW'
                ? BodyWeightAssistance(
                    title: '5 x 10',
                    liftIndex: ex1SavedIndex,
                    reps: '10',
                    cbIndex1: 114,
                    cbIndex2: 115,
                    cbIndex3: 116,
                    cbIndex4: 117,
                    cbIndex5: 118,
                  )
                : Column(
                    children: <Widget>[
                      WarmUp(
                        liftIndex: ex1SavedIndex,
                        cbIndex1: 108,
                        cbIndex2: 109,
                        cbIndex3: 110,
                      ),
                      FiveThreeOnePrSet(
                        title: '531',
                        liftIndex: ex1SavedIndex,
                        percentage1: 65,
                        percentage2: 75,
                        percentage3: 85,
                        cbIndex1: 111,
                        cbIndex2: 112,
                        cbIndex3: 113,
                        reps1: '5',
                        reps2: '5',
                        reps3: '5+',
                      ),
                      BBB(
                        title: 'BBB',
                        liftIndex: ex1SavedIndex,
                        percentage: 50,
                        reps: '10',
                        cbIndex1: 114,
                        cbIndex2: 115,
                        cbIndex3: 116,
                        cbIndex4: 117,
                        cbIndex5: 118,
                      ),
                    ],
                  ),
            RouteTile(
                title: model.contacts[ex2SavedIndex].lift,
                route: Alternative5x10(
                  cbIndex1: 119,
                  cbIndex2: 120,
                  cbIndex3: 121,
                  cbIndex4: 122,
                  cbIndex5: 123,
                  liftIndexEx: 7,
                )),
            model.contacts[ex2SavedIndex].trainingMax == 'BW'
                ? BodyWeightAssistance(
                    title: '5 x 10',
                    liftIndex: ex2SavedIndex,
                    reps: '10',
                    cbIndex1: 124,
                    cbIndex2: 125,
                    cbIndex3: 126,
                    cbIndex4: 127,
                    cbIndex5: 128,
                  )
                : BBB(
                    title: '5 x 10',
                    liftIndex: ex2SavedIndex,
                    percentage: 50,
                    reps: '10',
                    cbIndex1: 124,
                    cbIndex2: 125,
                    cbIndex3: 126,
                    cbIndex4: 127,
                    cbIndex5: 128,
                  ),
            Center(
              child: RaisedButton(
                color: ThemeData.dark().accentColor,
                child: Text(
                  'Day Completed',
                  style: TextStyle(color: ThemeData.dark().primaryColor),
                ),
                onPressed: () {
                  model.setWeekIndex(1);
                  model.getWeekIndex();

                  model.setDayIndex(0);
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
