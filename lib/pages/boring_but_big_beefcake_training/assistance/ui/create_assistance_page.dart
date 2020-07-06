import 'package:five_three_one_forever_app/pages/boring_but_big_beefcake_training/assistance/ui/assistance_form.dart';
import 'package:flutter/material.dart';

class AssistanceCreatePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Create'),
      ),
      body: AssistanceForm(),
    );
  }
}
