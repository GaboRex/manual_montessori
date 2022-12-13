import 'package:flutter/material.dart';


class ChecklistSection extends StatefulWidget {
  @override
  State<ChecklistSection> createState() {
    return ChecklistSectionState();
  }
}
class ChecklistSectionState extends State<ChecklistSection> {
  bool? _isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Center(
      child:
      CheckboxListTile(
        title: const Text("Logra independizarse"),
        value: _isChecked,
        onChanged: (bool? newValue){
          setState(() {
            _isChecked = newValue;
          });
        },
        activeColor: Color.fromARGB(255, 0, 0, 32),
        checkColor: Colors.white,
        tileColor: Color.fromARGB(255, 0, 0, 32).withOpacity(0.5),
        subtitle: const Text("0-5 meses"),
        controlAffinity: ListTileControlAffinity.leading,
        tristate: true,
      ),

    );

  }
}

