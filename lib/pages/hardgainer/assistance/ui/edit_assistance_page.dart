import 'package:five_three_one_forever_app/pages/boring_but_big_beefcake_training/assistance/data/assistance_work.dart';
import 'package:five_three_one_forever_app/pages/boring_but_big_beefcake_training/assistance/ui/assistance_form.dart';
import 'package:flutter/material.dart';

class AssistanceEditPage extends StatelessWidget {
  final AssistanceWork editedAssistance;

  AssistanceEditPage({
    Key key,
    @required this.editedAssistance,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Edit'),
      ),
      body: AssistanceForm(
        editedAssistance: editedAssistance,
      ),
    );
  }
}
