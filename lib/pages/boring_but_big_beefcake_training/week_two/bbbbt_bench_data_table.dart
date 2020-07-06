import 'package:five_three_one_forever_app/widgets/bbb.dart';
import 'package:five_three_one_forever_app/widgets/five_three_one.dart';
import 'package:five_three_one_forever_app/widgets/warm_up.dart';
import 'package:flutter/material.dart';

class BBBBTBenchDataTable extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        WarmUp(
          title: 'Bench',
          liftIndex: 1,
          cbIndex1: 715,
          cbIndex2: 716,
          cbIndex3: 717,
        ),
        FiveThreeOne(
          title: '5/3/1',
          liftIndex: 1,
          percentage1: 65,
          percentage2: 75,
          percentage3: 85,
          cbIndex1: 718,
          cbIndex2: 719,
          cbIndex3: 720,
        ),
        BBB(
            title: 'BBB',
            liftIndex: 1,
            percentage: 65,
            cbIndex1: 721,
            cbIndex2: 722,
            cbIndex3: 723,
            cbIndex4: 724,
            cbIndex5: 725),
        BBB(
          title: 'Row',
          liftIndex: 4,
          percentage: 65,
          cbIndex1: 726,
          cbIndex2: 727,
          cbIndex3: 728,
          cbIndex4: 729,
          cbIndex5: 730,
        ),
      ],
    );
  }
}
