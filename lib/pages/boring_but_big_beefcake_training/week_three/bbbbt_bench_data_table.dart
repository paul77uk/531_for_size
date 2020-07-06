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
          cbIndex1: 768,
          cbIndex2: 769,
          cbIndex3: 770,
        ),
        FiveThreeOne(
          title: '5/3/1',
          liftIndex: 1,
          percentage1: 75,
          percentage2: 85,
          percentage3: 95,
          cbIndex1: 771,
          cbIndex2: 772,
          cbIndex3: 773,
        ),
        BBB(
            title: 'BBB',
            liftIndex: 1,
            percentage: 75,
            cbIndex1: 774,
            cbIndex2: 775,
            cbIndex3: 776,
            cbIndex4: 777,
            cbIndex5: 778),
        BBB(
          title: 'Row',
          liftIndex: 4,
          percentage: 75,
          cbIndex1: 779,
          cbIndex2: 780,
          cbIndex3: 781,
          cbIndex4: 782,
          cbIndex5: 783,
        ),
      ],
    );
  }
}
