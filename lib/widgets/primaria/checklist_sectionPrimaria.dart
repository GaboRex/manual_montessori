import 'package:flutter/material.dart';


class ChecklistSection3 extends StatefulWidget {

  @override
  State<ChecklistSection3> createState() {
    return ChecklistSectionState();
  }
}
class ChecklistSectionState extends State<ChecklistSection3> {
  bool? _isChecked = false;
  bool? _isChecked2 = false;
  bool? _isChecked3 = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment : MainAxisAlignment.center,
      children: [
        CheckboxListTile(
          title: const Text("Comienza a sentir inseguridad y duda, especialmente entre los 12 y 15 años.",
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
          subtitle: const Text("12-18 años"),
          controlAffinity: ListTileControlAffinity.leading,
          tristate: true,
        ),
        CheckboxListTile(
          title: const Text("Requiere contacto con la naturaleza y su entorno",
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
          subtitle: const Text("12-18 años"),
          controlAffinity: ListTileControlAffinity.leading,
          tristate: true,
        ),
        CheckboxListTile(
          title: const Text("Aumento de preocupacion por su aspecto fisico",
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
          subtitle: const Text("12-18 años"),
          controlAffinity: ListTileControlAffinity.leading,
          tristate: true,
        ),
      ],
    ) ;
  }
}

