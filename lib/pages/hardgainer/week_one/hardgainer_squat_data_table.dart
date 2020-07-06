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
          cbIndex1: 893,
          cbIndex2: 894,
          cbIndex3: 895,
        ),
        FiveThreeOnePrSet(
            title: '5/3/1',
            liftIndex: 0,
            percentage1: 65,
            percentage2: 75,
            percentage3: 85,
            cbIndex1: 899,
            cbIndex2: 900,
            cbIndex3: 901),
        WidowMaker(
          title: 'Widowmaker',
          liftIndex: 0,
          percentage: 65,
          cbIndex: 924,
        ),
      ],
    );
  }
}
