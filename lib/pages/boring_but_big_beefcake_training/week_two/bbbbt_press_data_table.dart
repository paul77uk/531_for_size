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
            cbIndex1: 741,
            cbIndex2: 742,
            cbIndex3: 743),
        FiveThreeOne(
            title: '5/3/1',
            liftIndex: 3,
            percentage1: 65,
            percentage2: 75,
            percentage3: 85,
            cbIndex1: 744,
            cbIndex2: 745,
            cbIndex3: 746),
        BBB(
          title: 'BBB',
          liftIndex: 3,
          percentage: 65,
          cbIndex1: 747,
          cbIndex2: 748,
          cbIndex3: 749,
          cbIndex4: 750,
          cbIndex5: 751,
        ),
        BBB(
          title: 'Row',
          liftIndex: 4,
          percentage: 65,
          cbIndex1: 752,
          cbIndex2: 753,
          cbIndex3: 754,
          cbIndex4: 755,
          cbIndex5: 756,
        ),
      ],
    );
  }
}
