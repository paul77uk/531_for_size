import 'package:five_three_one_forever_app/pages/boring_but_big_beefcake_training/assistance/data/assistance_work.dart';
import 'package:five_three_one_forever_app/ui/model/contacts_model.dart';
import 'package:flutter/material.dart';
import 'package:scoped_model/scoped_model.dart';

class AssistanceForm extends StatefulWidget {
  final AssistanceWork editedAssistance;

  AssistanceForm({
    Key key,
    this.editedAssistance,
  }) : super(key: key);

  @override
  _AssistanceFormState createState() => _AssistanceFormState();
}

class _AssistanceFormState extends State<AssistanceForm> {
  final _formKey = GlobalKey<FormState>();

  String _exercise;
  String _weight;
  String _reps;
  int idIndex;

  bool get isEditMode => widget.editedAssistance != null;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: ListView(
        children: <Widget>[
          SizedBox(height: 10),
          TextFormField(
            onSaved: (value) => _exercise = value,
            validator: _validateName,
            initialValue: widget.editedAssistance?.exercise,
            decoration: InputDecoration(
              labelText: 'exercise',
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(5),
              ),
            ),
          ),
          SizedBox(height: 10),
          TextFormField(
            keyboardType: TextInputType.number,
            onSaved: (value) => _weight = value,
            validator: _validateName,
            initialValue: widget.editedAssistance?.weight,
            decoration: InputDecoration(
              labelText: 'Assistance Work',
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(5),
              ),
            ),
          ),
          TextFormField(
            keyboardType: TextInputType.number,
            onSaved: (value) => _reps = value,
            validator: _validateName,
            initialValue: widget.editedAssistance?.reps,
            decoration: InputDecoration(
              labelText: 'Assistance Work',
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(5),
              ),
            ),
          ),
          SizedBox(height: 10),
          RaisedButton(
            onPressed: _onSaveAssistanceButtonPressed,
            child: Row(
// Center on the main axis (horizontally)
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text('SAVE'),
              ],
            ),
// Theme is also an inherited widget and we want to get the primary (blue) color
            color: ThemeData.dark().accentColor,
            textColor: ThemeData.dark().primaryColor,
          )
        ],
      ),
    );
  }

  // Validators either return an error string or null
// if the value is in the correct format
  String _validateName(String value) {
    if (value.isEmpty) {
      return 'Enter some text';
    }
    return null;
  }

  // String _validateEmail(String value) {
  //   final emailRegex = RegExp(
  //       r"^[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,253}[a-zAZ0-9])?(?:\.[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,253}[a-zA-Z0-9])?)*$");
  //   if (value.isEmpty) {
  //     return 'Enter an email';
  //   } else if (!emailRegex.hasMatch(value)) {
  //     return 'Enter a valid email address';
  //   }
  //   return null;
  // }

  // String _validatePhoneNumber(String value) {
  //   final phoneRegex = RegExp(r'[!@#<>?":_`~;[\]\\|=+)(*&^%0-9-]');
  //   if (value.isEmpty) {
  //     return 'Enter a phone number';
  //   } else if (!phoneRegex.hasMatch(value)) {
  //     return 'Enter a valid phone number';
  //   }
  //   return null;
  // }

  void _onSaveAssistanceButtonPressed() {
// Accessing Form through _formKey
    if (_formKey.currentState.validate()) {
      _formKey.currentState.save();
      final newOrEditedAssistance = AssistanceWork(
        listId: idIndex,
        exercise: _exercise,
        weight: _weight,
        reps: _reps,
      );
      if (isEditMode) {
        newOrEditedAssistance.id = widget.editedAssistance.id;
        ScopedModel.of<ContactsModel>(context).updateAssistanceWork(
          newOrEditedAssistance,
        );
      } else {
        ScopedModel.of<ContactsModel>(context)
            .addAssistanceWork(newOrEditedAssistance);
      }
      Navigator.of(context).pop();
    }
  }
}
