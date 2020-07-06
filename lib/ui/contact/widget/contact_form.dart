import 'package:five_three_one_forever_app/data/contact.dart';
import 'package:five_three_one_forever_app/ui/model/contacts_model.dart';
import 'package:five_three_one_forever_app/widgets/rep_and_training_max_calculator.dart';
import 'package:flutter/material.dart';
import 'package:scoped_model/scoped_model.dart';

class ContactForm extends StatefulWidget {
  final Contact editedContact;
  String repMax;
  String trainingMax;
  ContactForm({
    Key key,
    this.editedContact,
    this.repMax,
    this.trainingMax,
  }) : super(key: key);

  @override
  _ContactFormState createState() => _ContactFormState();
}

class _ContactFormState extends State<ContactForm> {
  final _formKey = GlobalKey<FormState>();

  String _lift;

  bool get isEditMode => widget.editedContact != null;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: ListView(
        children: <Widget>[
          SizedBox(height: 10),
          TextFormField(
            textCapitalization: TextCapitalization.words,
            onSaved: (value) => _lift = value,
            validator: _validateLift,
            initialValue: widget.editedContact?.lift,
            decoration: InputDecoration(
              labelText: 'Lift',
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(5),
              ),
            ),
          ),
          SizedBox(height: 10),
          TextFormField(
            keyboardType: TextInputType.numberWithOptions(),
            onSaved: (value) => widget.repMax = value,
            validator: _validateRepMax,
            initialValue: widget.editedContact?.repMax,
            decoration: InputDecoration(
              labelText: 'Weighted - 1 Rep Max/ Bodyweight - Max Reps',
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(5),
              ),
            ),
          ),
          SizedBox(height: 10),
          TextFormField(
            onSaved: (value) => widget.trainingMax = value,
            validator: _validateTrainingMax,
            initialValue: widget.editedContact?.trainingMax,
            decoration: InputDecoration(
              labelText: 'Training Max Percentage/ BW',
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(5),
              ),
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Text(
            'Type BW if bodyweight exercise',
            textAlign: TextAlign.center,
            style: TextStyle(color: Theme.of(context).accentColor),
          ),
          SizedBox(height: 10),
          RaisedButton(
            onPressed: _onSaveContactButtonPressed,
            child: Row(
// Center on the main axis (horizontally)
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text('SAVE'),
              ],
            ),
// Theme is also an inherited widget and we want to get the primary (blue) color
            color: Theme.of(context).primaryColor,
            textColor: Colors.white,
          ),
          RepMaxAndTrainingMaxCalculator(),
        ],
      ),
    );
  }

  // Validators either return an error string or null
// if the value is in the correct format
  String _validateLift(String value) {
    if (value.isEmpty) {
      return 'Enter a lift';
    }
    return null;
  }

  String _validateRepMax(String value) {
    final repMaxRegex = RegExp(r'[!@#<>?":_`~;[\]\\|=+)(*&^%0-9-]');
    if (value.isEmpty) {
      return 'Enter starting 1 rep max';
    } else if (!repMaxRegex.hasMatch(value)) {
      return 'Enter a valid number';
    }
    return null;
  }

  String _validateTrainingMax(String value) {
    final repMaxRegex = RegExp(r'[!@#<>?":_`~;[\]\\|=+)(*&^%0-9-]');
    final bodyweightText = RegExp('BW', dotAll: true);
    if (value.isEmpty) {
      return 'Enter starting training max percentage or BW';
    } else if (!repMaxRegex.hasMatch(value) &&
        !bodyweightText.hasMatch(value)) {
      return 'Enter a valid number or BW';
    }
    return null;
  }

  void _onSaveContactButtonPressed() {
// Accessing Form through _formKey
    if (_formKey.currentState.validate()) {
      _formKey.currentState.save();
      final newOrEditedContact = Contact(
        lift: _lift,
        repMax: widget.repMax,
        trainingMax: widget.trainingMax,
      );
      if (isEditMode) {
        newOrEditedContact.id = widget.editedContact.id;
        ScopedModel.of<ContactsModel>(context).updateContact(
          newOrEditedContact,
        );
      } else {
        ScopedModel.of<ContactsModel>(context).addContact(newOrEditedContact);
      }
      Navigator.of(context).pop();
    }
  }
}
