import 'package:five_three_one_forever_app/program_title/program_bloc_reciever_list.dart';
import 'package:five_three_one_forever_app/program_title/program_dao_bloc.dart';
import 'package:five_three_one_forever_app/program_title/program_title_db/program_title_model.dart';

import 'package:flutter/material.dart';

class ProgramScreen extends StatelessWidget {
  final ProgramTitleModel programTitleModel;
  final bool isNew;
  final TextEditingController txtTitle = TextEditingController();

  final ProgramDaoBloc bloc;
  ProgramScreen(this.programTitleModel, this.isNew) : bloc = ProgramDaoBloc();

  @override
  Widget build(BuildContext context) {
    final double padding = 20.0;
    txtTitle.text = programTitleModel.title;

    return Scaffold(
      appBar: AppBar(
        title: Text('Program Screen'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.all(padding),
              child: TextField(
                textCapitalization: TextCapitalization.words,
                controller: txtTitle,
                decoration: InputDecoration(
                    border: InputBorder.none, hintText: 'title'),
              ),
            ),
            Padding(
                padding: EdgeInsets.all(padding),
                child: MaterialButton(
                  color: Colors.green,
                  child: Text('Save'),
                  onPressed: () {
                    bloc.getProgramsFromDb();
                    save().then((_) => Navigator.pushAndRemoveUntil(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ProgramBlocReceiever()),
                          (Route<dynamic> route) => false,
                        ));
                  },
                )),
          ],
        ),
      ),
    );
  }

  Future save() async {
    programTitleModel.title = txtTitle.text;
    programTitleModel.currentProgram = 'false';
    bloc.programModelInsertSink.add(programTitleModel);
  }
}
