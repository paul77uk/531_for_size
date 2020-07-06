import 'package:five_three_one_forever_app/widgets/bbs.dart';
import 'package:five_three_one_forever_app/widgets/five_three_one.dart';
import 'package:five_three_one_forever_app/widgets/warm_up.dart';
import 'package:flutter/material.dart';

class HardgainerPressDataTable extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        WarmUp(
            title: 'Press',
            liftIndex: 3,
            cbIndex1: 987,
            cbIndex2: 988,
            cbIndex3: 989),
        FiveThreeOne(
            title: '5/3/1',
            liftIndex: 3,
            percentage1: 70,
            percentage2: 80,
            percentage3: 90,
            cbIndex1: 990,
            cbIndex2: 991,
            cbIndex3: 992),
        BBS(
          title: 'BBS',
          liftIndex: 3,
          percentage: 70,
          cbIndex1: 993,
          cbIndex2: 994,
          cbIndex3: 995,
          cbIndex4: 996,
          cbIndex5: 997,
          cbIndex6: 998,
          cbIndex7: 999,
          cbIndex8: 100,
          cbIndex9: 1001,
          cbIndex10: 1002,
        ),
      ],
    );
  }
}
