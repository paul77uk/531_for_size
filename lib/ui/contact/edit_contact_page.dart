import 'package:five_three_one_forever_app/data/contact.dart';
import 'package:five_three_one_forever_app/ui/contact/widget/contact_form.dart';
import 'package:flutter/material.dart';

class ContactEditPage extends StatelessWidget {
  final Contact editedContact;

  ContactEditPage({
    Key key,
    @required this.editedContact,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Edit'),
      ),
      body: ContactForm(
        editedContact: editedContact,
      ),
    );
  }
}
