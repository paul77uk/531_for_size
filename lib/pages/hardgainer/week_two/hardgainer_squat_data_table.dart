import 'package:five_three_one_forever_app/widgets/five_three_one_pr_set.dart';
import 'package:five_three_one_forever_app/widgets/warm_up.dart';
import 'package:five_three_one_forever_app/widgets/widowmaker.dart';
import 'package:flutter/material.dart';

class HardgainerSquatDataTable extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        WarmUp(
          title: 'Squat',
          liftIndex: 0,
          cbIndex1: 917,
          cbIndex2: 918,
          cbIndex3: 919,
        ),
        FiveThreeOnePrSet(
            title: '5/3/1',
            liftIndex: 0,
            percentage1: 70,
            percentage2: 80,
            percentage3: 90,
            cbIndex1: 920,
            cbIndex2: 921,
            cbIndex3: 922),
        WidowMaker(
          title: 'Widowmaker',
          liftIndex: 0,
          percentage: 70,
          cbIndex: 923,
        ),
      ],
    );
  }
}
