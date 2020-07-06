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
  @override
  Widget build(BuildContext context) {
    return ScopedModelDescendant<ContactsModel>(
        builder: (context, child, model) {
      int ex1SavedIndex = model.exerciseindexClass[14].exerciseIndex;

      int ex2SavedIndex = model.exerciseindexClass[15].exerciseIndex;
      return Scaffold(
        body: ListView(
          children: <Widget>[
            RouteTile(title: 'Warm-up/Mobility', route: WarmUpPage()),
            RouteTile(
              title: model.contacts[ex1SavedIndex].lift,
              route: Alternative531PRAndBBB(
                percentage1: 70,
                percentage2: 80,
                percentage3: 90,
                cbIndex1: 223,
                cbIndex2: 224,
                cbIndex3: 225,
                cbIndex4: 226,
                cbIndex5: 227,
                cbIndex6: 228,
                cbIndex7: 229,
                cbIndex8: 230,
                cbIndex9: 231,
                cbIndex10: 232,
                cbIndex11: 233,
                rep1: '5',
                rep2: '5',
                rep3: '5+',
                liftIndexEx: 14,
              ),
            ),
            model.contacts[ex1SavedIndex].trainingMax == 'BW'
                ? BodyWeightAssistance(
                    title: '5 x 10',
                    liftIndex: ex1SavedIndex,
                    reps: '10',
                    cbIndex1: 240,
                    cbIndex2: 241,
                    cbIndex3: 242,
                    cbIndex4: 243,
                    cbIndex5: 244,
                  )
                : Column(
                    children: <Widget>[
                      WarmUp(
                        liftIndex: ex1SavedIndex,
                        cbIndex1: 234,
                        cbIndex2: 235,
                        cbIndex3: 236,
                      ),
                      FiveThreeOnePrSet(
                        title: '531',
                        liftIndex: ex1SavedIndex,
                        percentage1: 70,
                        percentage2: 80,
                        percentage3: 90,
                        cbIndex1: 237,
                        cbIndex2: 238,
                        cbIndex3: 239,
                        reps1: '5',
                        reps2: '5',
                        reps3: '5+',
                      ),
                      BBB(
                        title: 'BBB',
                        liftIndex: ex1SavedIndex,
                        percentage: 50,
                        reps: '10',
                        cbIndex1: 240,
                        cbIndex2: 241,
                        cbIndex3: 242,
                        cbIndex4: 243,
                        cbIndex5: 244,
                      ),
                    ],
                  ),
            RouteTile(
                title: model.contacts[ex2SavedIndex].lift,
                route: Alternative5x10(
                  cbIndex1: 245,
                  cbIndex2: 246,
                  cbIndex3: 247,
                  cbIndex4: 248,
                  cbIndex5: 249,
                  liftIndexEx: 15,
                )),
            model.contacts[ex2SavedIndex].trainingMax == 'BW'
                ? BodyWeightAssistance(
                    title: '5 x 10',
                    liftIndex: ex2SavedIndex,
                    reps: '10',
                    cbIndex1: 250,
                    cbIndex2: 251,
                    cbIndex3: 252,
                    cbIndex4: 253,
                    cbIndex5: 254,
                  )
                : BBB(
                    title: '5 x 10',
                    liftIndex: ex2SavedIndex,
                    percentage: 50,
                    reps: '10',
                    cbIndex1: 250,
                    cbIndex2: 251,
                    cbIndex3: 252,
                    cbIndex4: 253,
                    cbIndex5: 254,
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
