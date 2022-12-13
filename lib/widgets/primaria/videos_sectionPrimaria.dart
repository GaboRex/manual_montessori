import 'package:flutter/material.dart';

class VideoSection3 extends StatelessWidget{

  //lista videos
  List videoList = [
    '¿Confrontarlos? No es el camino correcto',
    '¿Como actuar en situaciones complicadas?',
    'Diferentes formas de hablar',
    'Recomendaciones y testimonios '

  ];
  @override
  Widget build(BuildContext context){
    return ListView.builder(
        itemCount: videoList.length,
      physics: NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemBuilder: (context, index){
          return ListTile(
            leading: Container(
              padding: EdgeInsets.all(5),
              decoration: BoxDecoration(
                color: index == 0
                    ? Color.fromARGB(255, 0, 0, 32)
                    :Color.fromARGB(255, 0, 0, 32).withOpacity(0.5),
                shape: BoxShape.circle,
              ),
              child: Icon(Icons.play_arrow_rounded,
              color: Colors.white,
                size: 30,
              ),
            ),
            title: Text(videoList[index]),
            subtitle: Text("20 min"),
          );

      }
    );
  }
}
