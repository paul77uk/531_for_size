import 'package:five_three_one_forever_app/program_title/program_dialog.dart';
import 'package:five_three_one_forever_app/program_title/program_title_db/db_helper.dart';
import 'package:five_three_one_forever_app/program_title/program_title_db/program_title_model.dart';
import 'package:five_three_one_forever_app/program_title/program_title_db/week_model.dart';
import 'package:five_three_one_forever_app/program_title/week_list_page.dart';
import 'package:flutter/material.dart';

class ProgramTitleListPage extends StatefulWidget {
  @override
  _ProgramTitleListPageState createState() => _ProgramTitleListPageState();
}

class _ProgramTitleListPageState extends State<ProgramTitleListPage> {
  DbHelper helper = DbHelper();
  List<ProgramTitleModel> programTitleModel;
  List<WeekModel> weekModel;
  ProgramDialog dialog;

  @override
  void initState() {
    dialog = ProgramDialog();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    showData();
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Create Training Program'),
      ),
      body: ListView.builder(
        itemCount: (programTitleModel != null) ? programTitleModel.length : 0,
        // Runs & builds every single list item
        itemBuilder: (context, index) {
          return Dismissible(
            // secondaryBackground: Icon(
            //   Icons.delete,
            //   color: Colors.red,
            // ),
            key: Key(programTitleModel[index].title),
            onDismissed: (DismissDirection direction) {
              String strName = programTitleModel[index].title;
              helper.deleteProgram(programTitleModel[index]);
              // model.deleteProgram(model.programs[index]);
              // model.programs.removeAt(index);
              setState(() {
                programTitleModel.removeAt(index);
                programTitleModel[index].title = '';
              });
              Scaffold.of(context)
                  .showSnackBar(SnackBar(content: Text("$strName deleted")));
            },
            child: Column(
              children: <Widget>[
                ListTile(
                  title: ListTile(
                    title: Text(
                      programTitleModel[index].title,
                      textAlign: TextAlign.center,
                    ),
                    trailing: Checkbox(
                        checkColor: ThemeData.dark().primaryColorDark,
                        value:
                            programTitleModel[index].currentProgram == 'false'
                                ? false
                                : true,
                        onChanged: (bool value) {
                          setState(() {
                            // programTitleModel[index].title =
                            //     programTitleModel[index].title;
                            programTitleModel[index].currentProgram == 'false'
                                ? programTitleModel[index].currentProgram =
                                    'true'
                                : programTitleModel[index].currentProgram =
                                    'false';
                            helper.insertProgramTitle(programTitleModel[index]);
                          });
                        }),
                  ),
                  leading: IconButton(
                    icon: Icon(
                      Icons.edit,
                    ),
                    color: ThemeData.dark().accentColor,
                    onPressed: () {
                      showDialog(
                          context: context,
                          builder: (BuildContext context) => dialog.buildDialog(
                              context, programTitleModel[index], false));
                    },
                  ),
                  trailing: IconButton(
                    icon: Icon(
                      Icons.navigate_next,
                      color: ThemeData.dark().accentColor,
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => WeekPage(
                                  programTitleModel[index],
                                )
                            // ExerciseNameAndTitleScreen(
                            //     programTitleModel[index])
                            ),
                      );
                    },
                  ),
                ),
                Divider(
                  height: 0,
                ),
              ],
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          showDialog(
            context: context,
            builder: (BuildContext context) =>
                dialog.buildDialog(context, ProgramTitleModel(0, '', ''), true),
          );
        },
      ),
    );
  }

  Future showData() async {
    await helper.openDb();
    programTitleModel = await helper.getPrograms();
    setState(() {
      programTitleModel = programTitleModel;
    });
  }
}

// class CustomListTile extends StatelessWidget {
//   const CustomListTile({
//     Key key,
//     this.model,
//     this.index,
//   }) : super(key: key);

//   final ProgramTitleDBScopedModel model;
//   final int index;

//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       children: <Widget>[
//         Padding(padding: EdgeInsets.only(top: 8)),
//         ListTile(
//           title: Text(
//             model.programs[index].title,
//             textAlign: TextAlign.center,
//           ),
//           onTap: () {
//             Navigator.of(context).push(MaterialPageRoute(
//               builder: (_) => ProgramEditPage(
//                 editedProgram: model.programs[index],
//               ),
//             ));
//           },
//         ),
//         Divider(),
//       ],
//     );
//   }
// }
