import 'package:flutter/material.dart';


class ChecklistSection extends StatefulWidget {

  @override
  State<ChecklistSection> createState() {
    return ChecklistSectionState();
  }
}
class ChecklistSectionState extends State<ChecklistSection> {
  bool? _isChecked = false;
  bool? _isChecked2 = false;
  bool? _isChecked3 = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment : MainAxisAlignment.center,
      children: [
        CheckboxListTile(
          title: const Text("Desarrollo del movimiento grueso y fino",
            style: TextStyle(
              color: Colors.white,
              fontStyle: FontStyle.italic,
            ),
          ),
          value: _isChecked,
          onChanged: (bool? newValue){
            setState(() {
              _isChecked = newValue;
            });
          },
          activeColor: Color.fromARGB(255, 0, 0, 32),
          checkColor: Colors.white,
          tileColor: Color.fromARGB(255, 0, 0, 32).withOpacity(0.5),
          subtitle: const Text("0-6 años"),
          controlAffinity: ListTileControlAffinity.leading,
          tristate: true,
        ),
        CheckboxListTile(
          title: const Text("Desarrollo del lenguaje",
              style: TextStyle(
            color: Colors.white,
                fontStyle: FontStyle.italic,
          ),
          ),
          value: _isChecked2,
          onChanged: (bool? newValue){
            setState(() {
              _isChecked2 = newValue;
            });
          },
          activeColor: Color.fromARGB(255, 0, 0, 32),
          checkColor: Colors.white,
          tileColor: Color.fromARGB(255, 0, 0, 32).withOpacity(0.5),
          subtitle: const Text("0-6 años"),
          controlAffinity: ListTileControlAffinity.leading,
          tristate: true,
        ),
        CheckboxListTile(
          title: const Text("Importancia de las experiencias sensoriales que favorecen la inteligencia",
            style: TextStyle(
              color: Colors.white,
              fontStyle: FontStyle.italic,
            ),
          ),
          value: _isChecked3,
          onChanged: (bool? newValue){
            setState(() {
              _isChecked3 = newValue;
            });
          },
          activeColor: Color.fromARGB(255, 0, 0, 32),
          checkColor: Colors.white,
          tileColor: Color.fromARGB(255, 0, 0, 32).withOpacity(0.5),
          subtitle: const Text("0-6 años"),
          controlAffinity: ListTileControlAffinity.leading,
          tristate: true,
        ),
      ],
    ) ;
  }
}

