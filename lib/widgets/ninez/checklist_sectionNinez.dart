import 'package:flutter/material.dart';


class ChecklistSection2 extends StatefulWidget {

  @override
  State<ChecklistSection2> createState() {
    return ChecklistSectionState();
  }
}
class ChecklistSectionState extends State<ChecklistSection2> {
  bool? _isChecked = false;
  bool? _isChecked2 = false;
  bool? _isChecked3 = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment : MainAxisAlignment.center,
      children: [
        CheckboxListTile(
          title: const Text("Comienza el deseo de tener amiguitos o pares con quienes jugar",
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
          subtitle: const Text("6-12 años"),
          controlAffinity: ListTileControlAffinity.leading,
          tristate: true,
        ),
        CheckboxListTile(
          title: const Text("Despierta el sentido moral",
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
          subtitle: const Text("6-12 años"),
          controlAffinity: ListTileControlAffinity.leading,
          tristate: true,
        ),
        CheckboxListTile(
          title: const Text("Aparece el deseo de ampliar tanto el entorno familiar como el escolar",
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
          subtitle: const Text("6-12 años"),
          controlAffinity: ListTileControlAffinity.leading,
          tristate: true,
        ),
      ],
    ) ;
  }
}

