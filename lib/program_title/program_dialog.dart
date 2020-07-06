import 'package:five_three_one_forever_app/program_title/program_title_db/db_helper.dart';
import 'package:five_three_one_forever_app/program_title/program_title_db/program_title_model.dart';
import 'package:flutter/material.dart';

class ProgramDialog {
  final txtTitle = TextEditingController();
  final txtCurrentProgram = TextEditingController();

  Widget buildDialog(
      BuildContext context, ProgramTitleModel programTitleModel, bool isNew) {
    DbHelper helper = DbHelper();
    if (!isNew) {
      txtTitle.text = programTitleModel.title;
    } else if (isNew) {
      txtTitle.text = '';
    }
    return AlertDialog(
      title: Text((isNew) ? 'New Program' : 'Edit Program Title'),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0)),
      content: SingleChildScrollView(
        child: Column(children: <Widget>[
          TextField(
            textCapitalization: TextCapitalization.words,
            controller: txtTitle,
            decoration: InputDecoration(hintText: 'Program Title'),
          ),
          RaisedButton(
            color: ThemeData.dark().accentColor,
            child: Text(
              'Save Program',
              style: TextStyle(color: ThemeData.dark().primaryColor),
            ),
            onPressed: () {
              programTitleModel.title = txtTitle.text;
              programTitleModel.currentProgram = 'false';
              helper.insertProgramTitle(programTitleModel);
              Navigator.pop(context);
              programTitleModel.title = '';
            },
          ),
        ]),
      ),
    );
  }

//   final _formKey = GlobalKey<FormState>();

//   String _title;

//   bool get isEditMode => widget.editedProgram != null;

//   @override
//   Widget build(BuildContext context) {
//     return Form(
//       key: _formKey,
//       child: ListView(
//         children: <Widget>[
//           SizedBox(height: 10),
//           TextFormField(
//             textCapitalization: TextCapitalization.words,
//             onSaved: (value) => _title = value,
//             validator: _validateLift,
//             initialValue: widget.editedProgram?.title,
//             decoration: InputDecoration(
//               labelText: 'Title',
//               border: OutlineInputBorder(
//                 borderRadius: BorderRadius.circular(5),
//               ),
//             ),
//           ),
//           SizedBox(height: 10),
//           RaisedButton(
//             onPressed: _onSaveContactButtonPressed,
//             child: Row(
// // Center on the main axis (horizontally)
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: <Widget>[
//                 Text('SAVE'),
//               ],
//             ),
// // Theme is also an inherited widget and we want to get the primary (blue) color
//             color: Theme.of(context).primaryColor,
//             textColor: Colors.white,
//           ),
//         ],
//       ),
//     );
//   }

//   // Validators either return an error string or null
// // if the value is in the correct format
//   String _validateLift(String value) {
//     if (value.isEmpty) {
//       return 'Enter a title';
//     }
//     return null;
//   }

//   void _onSaveContactButtonPressed() {
// // Accessing Form through _formKey
//     if (_formKey.currentState.validate()) {
//       _formKey.currentState.save();
//       final newOrEditedProgram = ProgramTitleModel(
//         title: _title,
//       );
//       if (isEditMode) {
//         newOrEditedProgram.id = widget.editedProgram.id;
//         ScopedModel.of<ProgramTitleDBScopedModel>(context).updateProgram(
//           newOrEditedProgram,
//         );
//       } else {
//         ScopedModel.of<ProgramTitleDBScopedModel>(context)
//             .addProgram(newOrEditedProgram);
//       }
//       Navigator.of(context).pop();
//     }
//   }
}
