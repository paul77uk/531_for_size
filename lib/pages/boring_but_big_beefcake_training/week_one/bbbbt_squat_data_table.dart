import 'package:five_three_one_forever_app/widgets/bbb.dart';
import 'package:five_three_one_forever_app/widgets/five_three_one.dart';
import 'package:five_three_one_forever_app/widgets/warm_up.dart';
import 'package:flutter/material.dart';

class BBBBTSquatDataTable extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        WarmUp(
          title: 'Squat',
          liftIndex: 0,
          cbIndex1: 542,
          cbIndex2: 543,
          cbIndex3: 544,
        ),
        FiveThreeOne(
            title: '5/3/1',
            liftIndex: 0,
            percentage1: 70,
            percentage2: 80,
            percentage3: 90,
            cbIndex1: 545,
            cbIndex2: 546,
            cbIndex3: 547),
        BBB(
          title: 'BBB',
          liftIndex: 0,
          percentage: 70,
          cbIndex1: 548,
          cbIndex2: 549,
          cbIndex3: 550,
          cbIndex4: 551,
          cbIndex5: 552,
        ),
      ],
    );
  }
}
