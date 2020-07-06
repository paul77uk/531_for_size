import 'package:five_three_one_forever_app/pages/conditioning.dart';

import 'package:five_three_one_forever_app/pages/warm_up_page.dart';
import 'package:five_three_one_forever_app/ui/model/contacts_model.dart';
import 'package:five_three_one_forever_app/widgets/route_tile.dart';
import 'package:five_three_one_forever_app/widgets/seventh_week_protocol.dart';
import 'package:flutter/material.dart';
import 'package:scoped_model/scoped_model.dart';

class DayPage extends StatelessWidget {
  const DayPage({
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
  final SeventhWeekProtocol liftTable;
  final bool twoLifts;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ScopedModelDescendant<ContactsModel>(
          builder: (context, child, model) {
        return ListView(
          children: <Widget>[
            RouteTile(title: 'Warm-up/Mobility', route: WarmUpPage()),
            RouteTile(title: 'Jump/Throws - 10 total'),
            // DataTableClass(),

            SeventhWeekProtocol(
              index: index,
              lift: lift,
            ),
            twoLifts
                ? Column(
                    children: <Widget>[
                      SeventhWeekProtocol(
                        index: index2,
                        lift: lift2,
                      ),
                      RouteTile(
                        title: 'Conditioning - 3-5 easy days of conditioning.',
                        route: ConditioningPage(),
                      ),
                    ],
                  )
                : RouteTile(
                    title: 'Conditioning - 3-5 easy days of conditioning.',
                    route: ConditioningPage(),
                  ),
          ],
        );
      }),
    );
  }
}
