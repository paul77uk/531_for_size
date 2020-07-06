import 'package:five_three_one_forever_app/widgets/bbb.dart';
import 'package:five_three_one_forever_app/widgets/five_three_one.dart';
import 'package:five_three_one_forever_app/widgets/warm_up.dart';
import 'package:flutter/material.dart';

class BBBBTPressDataTable extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        WarmUp(
            title: 'Press',
            liftIndex: 3,
            cbIndex1: 797,
            cbIndex2: 798,
            cbIndex3: 799),
        FiveThreeOne(
            title: '5/3/1',
            liftIndex: 3,
            percentage1: 75,
            percentage2: 85,
            percentage3: 95,
            cbIndex1: 800,
            cbIndex2: 801,
            cbIndex3: 802),
        BBB(
          title: 'BBB',
          liftIndex: 3,
          percentage: 75,
          cbIndex1: 803,
          cbIndex2: 804,
          cbIndex3: 805,
          cbIndex4: 806,
          cbIndex5: 807,
        ),
        BBB(
          title: 'Row',
          liftIndex: 4,
          percentage: 75,
          cbIndex1: 808,
          cbIndex2: 809,
          cbIndex3: 810,
          cbIndex4: 811,
          cbIndex5: 812,
        ),
      ],
    );
  }
}
