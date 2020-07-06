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
            cbIndex1: 1081,
            cbIndex2: 1082,
            cbIndex3: 1083),
        FiveThreeOne(
            title: '5/3/1',
            liftIndex: 3,
            percentage1: 75,
            percentage2: 85,
            percentage3: 95,
            cbIndex1: 1084,
            cbIndex2: 1085,
            cbIndex3: 1086),
        BBS(
          title: 'BBS',
          liftIndex: 3,
          percentage: 75,
          cbIndex1: 1087,
          cbIndex2: 1088,
          cbIndex3: 1089,
          cbIndex4: 1090,
          cbIndex5: 1091,
          cbIndex6: 1092,
          cbIndex7: 1093,
          cbIndex8: 1094,
          cbIndex9: 1095,
          cbIndex10: 1096,
        ),
      ],
    );
  }
}
