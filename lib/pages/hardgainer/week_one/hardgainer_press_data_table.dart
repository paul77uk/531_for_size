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
            cbIndex1: 877,
            cbIndex2: 878,
            cbIndex3: 879),
        FiveThreeOne(
            title: '5/3/1',
            liftIndex: 3,
            percentage1: 65,
            percentage2: 75,
            percentage3: 85,
            cbIndex1: 880,
            cbIndex2: 881,
            cbIndex3: 882),
        BBS(
          title: 'BBS',
          liftIndex: 3,
          percentage: 65,
          cbIndex1: 883,
          cbIndex2: 884,
          cbIndex3: 885,
          cbIndex4: 886,
          cbIndex5: 887,
          cbIndex6: 888,
          cbIndex7: 889,
          cbIndex8: 890,
          cbIndex9: 891,
          cbIndex10: 892,
        ),
      ],
    );
  }
}
