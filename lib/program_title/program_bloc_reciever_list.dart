import 'package:five_three_one_forever_app/program_title/program_dao_bloc.dart';
import 'package:five_three_one_forever_app/program_title/program_title_db/program_title_model.dart';

import 'package:five_three_one_forever_app/program_title/program_bloc_receiver_dialog.dart';
import 'package:flutter/material.dart';

class ProgramBlocReceiever extends StatefulWidget {
  @override
  _ProgramBlocReceieverState createState() => _ProgramBlocReceieverState();
}

class _ProgramBlocReceieverState extends State<ProgramBlocReceiever> {
  ProgramDaoBloc programDaoBloc;
  List<ProgramTitleModel> programTitleModelList;

  @override
  void initState() {
    programDaoBloc = ProgramDaoBloc();
    super.initState();
  }

  @override
  void dispose() {
    programDaoBloc.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    ProgramTitleModel programTitleModel = ProgramTitleModel(0, '', '');
    programTitleModelList = programDaoBloc.programModelList;
    return Scaffold(
      appBar: AppBar(
        title: Text('Training Programs'),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => ProgramScreen(programTitleModel, true)),
          );
        },
      ),
      body: Container(
          child: StreamBuilder<List<ProgramTitleModel>>(
              stream: programDaoBloc.programModels,
              initialData: programTitleModelList,
              builder: (BuildContext context, AsyncSnapshot snapshot) {
                return ListView.builder(
                    itemCount: (snapshot.hasData) ? snapshot.data.length : 0,
                    itemBuilder: (context, index) {
                      return Dismissible(
                          key: Key(snapshot.data[index].title),
                          onDismissed: (_) {
                            String strName = snapshot.data[index].title;

                            programDaoBloc.programModelDeleteSink
                                .add(snapshot.data[index]);
                            snapshot.data.removeAt(index);
                            Scaffold.of(context).showSnackBar(
                                SnackBar(content: Text("$strName deleted")));
                          },
                          child: ListTile(
                            leading: CircleAvatar(
                              backgroundColor: Theme.of(context).highlightColor,
                              child: Text("${snapshot.data[index].title}"),
                            ),
                            title: Text("${snapshot.data[index].title}"),
                            subtitle: Text("${snapshot.data[index].title}"),
                            trailing: IconButton(
                              icon: Icon(Icons.edit),
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => ProgramScreen(
                                          snapshot.data[index], false)),
                                );
                              },
                            ),
                          ));
                    });
              })),
    );
  }
}
