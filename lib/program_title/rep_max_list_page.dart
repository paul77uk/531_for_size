import 'package:five_three_one_forever_app/program_title/program_title_db/db_helper.dart';
import 'package:five_three_one_forever_app/program_title/program_title_db/exercise_model.dart';
import 'package:five_three_one_forever_app/program_title/rep_max_dialog.dart';
import 'package:flutter/material.dart';

class RepMaxListPage extends StatefulWidget {
  @override
  _RepMaxListPageState createState() => _RepMaxListPageState();
}

class _RepMaxListPageState extends State<RepMaxListPage> {
  DbHelper helper = DbHelper();
  List<ExerciseModel> exerciseModel;
  // RepMaxDialog dialog;

  @override
  Widget build(BuildContext context) {
    helper = DbHelper();
    helper.openDb();
    showData();
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Maxes'),
      ),
      body: ListView.builder(
        itemCount: (exerciseModel != null) ? exerciseModel.length : 0,
        // Runs & builds every single list item
        itemBuilder: (context, index) {
          return Dismissible(
            // secondaryBackground: Icon(
            //   Icons.delete,
            //   color: Colors.red,
            // ),
            key: Key(exerciseModel[index].lift),
            onDismissed: (DismissDirection direction) {
              String strName = exerciseModel[index].lift;
              setState(() {
                helper.deleteExercise(exerciseModel[index]);
                exerciseModel.removeAt(index);
                exerciseModel[index].lift = '';
              });
              Scaffold.of(context)
                  .showSnackBar(SnackBar(content: Text("$strName deleted")));
            },
            child: Column(
              children: <Widget>[
                ListTile(
                  // onTap: () {
                  //   Navigator.push(
                  //     context,
                  //     MaterialPageRoute(
                  //         builder: (context) => RepMaxDialog(
                  //             exerciseModel: exerciseModel[index],
                  //             isNew: false)),
                  //   );
                  // },
                  title: Text(
                    exerciseModel[index].lift,
                    textAlign: TextAlign.center,
                  ),
                  subtitle: Text(
                    '1 Rep Max: ${exerciseModel[index].repMax}\nTraining Max: ${exerciseModel[index].trainingMax}',
                    textAlign: TextAlign.center,
                  ),
                  leading: IconButton(
                    icon: Icon(
                      Icons.edit,
                    ),
                    color: ThemeData.dark().accentColor,
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => RepMaxDialog(
                                exerciseModel: exerciseModel[index],
                                isNew: false)),
                      );
                    },
                  ),
                  trailing: Opacity(
                    opacity: 0,
                    child: IconButton(
                      icon: Icon(
                        Icons.edit,
                      ),
                      color: ThemeData.dark().accentColor,
                      onPressed: () {
                        // showDialog(
                        //     context: context,
                        //     builder: (BuildContext context) => dialog.buildDialog(
                        //         context, programTitleModel[index], false));
                      },
                    ),
                  ),
                ),
                Divider(
                  height: 20,
                ),
              ],
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => RepMaxDialog(
                      exerciseModel: ExerciseModel(0, '', '', ''), isNew: true)
                  // ExerciseNameAndTitleScreen(
                  //     programTitleModel[index])
                  ),
            );
          }),
    );
  }

  Future showData() async {
    await helper.openDb();
    exerciseModel = await helper.getExercises();
    setState(() {
      exerciseModel = exerciseModel;
    });
  }
}

// class CustomListTile extends StatelessWidget {
//   const CustomListTile({
//     Key key,
//     this.model,
//     this.index,
//   }) : super(key: key);

//   final ContactsModel model;
//   final int index;

//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       children: <Widget>[
//         Padding(padding: EdgeInsets.only(top: 8)),
//         ListTile(
//           title: Text(
//             model.contacts[index].lift,
//             textAlign: TextAlign.center,
//           ),
//           subtitle: Padding(
//             padding: const EdgeInsets.only(top: 8.0),
//             child: Text(
//               '1 Rep Max: ${model.contacts[index].repMax}\nTraining Max: ${model.contacts[index].trainingMax}',
//               textAlign: TextAlign.center,
//             ),
//           ),
//           onTap: () {
//             Navigator.of(context).push(MaterialPageRoute(
//               builder: (_) => ContactEditPage(
//                 editedContact: model.contacts[index],
//               ),
//             ));
//           },
//         ),
//         Divider(),
//       ],
//     );
//   }
// }
