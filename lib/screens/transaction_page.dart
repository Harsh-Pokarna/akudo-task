import 'package:akudo_task/models/user_model.dart';
import 'package:flutter/material.dart';

class TransactionPage extends StatefulWidget {
  const TransactionPage({Key key}) : super(key: key);

  @override
  _TransactionPageState createState() => _TransactionPageState();
}

class _TransactionPageState extends State<TransactionPage> {
  String userChosen;
  List<DropdownMenuItem<String>> dropDownMenuItems;

  @override
  void initState() {
    super.initState();
    dropDownMenuItems = buildDropDownMenuItems(getNameOfUsers());
    var selectedUser = dropDownMenuItems[0].value;
  }

  List<DropdownMenuItem<String>> buildDropDownMenuItems(List<String> names) {
    List<DropdownMenuItem<String>> items = [];
    for (var name in names) {
      items.add(DropdownMenuItem(
        value: name,
        child: Text(name.toString()),
      ));
    }
    return items;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Page 2'),
      ),
      body: Container(
        child: Column(
          children: [
            DropdownButton(
              items: dropDownMenuItems,
              value: userChosen,
            )
          ],
        ),
      ),
    );
  }
}
