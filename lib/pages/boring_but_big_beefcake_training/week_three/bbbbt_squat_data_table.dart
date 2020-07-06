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
          cbIndex1: 813,
          cbIndex2: 814,
          cbIndex3: 815,
        ),
        FiveThreeOne(
            title: '5/3/1',
            liftIndex: 0,
            percentage1: 75,
            percentage2: 85,
            percentage3: 95,
            cbIndex1: 816,
            cbIndex2: 817,
            cbIndex3: 818),
        BBB(
          title: 'BBB',
          liftIndex: 0,
          percentage: 75,
          cbIndex1: 819,
          cbIndex2: 820,
          cbIndex3: 821,
          cbIndex4: 822,
          cbIndex5: 823,
        ),
      ],
    );
  }
}
