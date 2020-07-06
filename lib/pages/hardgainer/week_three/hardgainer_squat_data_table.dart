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
          cbIndex1: 1018,
          cbIndex2: 1019,
          cbIndex3: 1020,
        ),
        FiveThreeOnePrSet(
            title: '5/3/1',
            liftIndex: 0,
            percentage1: 75,
            percentage2: 85,
            percentage3: 95,
            cbIndex1: 1021,
            cbIndex2: 1022,
            cbIndex3: 1023),
        WidowMaker(
          title: 'Widowmaker',
          liftIndex: 0,
          percentage: 75,
          cbIndex: 1024,
        ),
      ],
    );
  }
}
