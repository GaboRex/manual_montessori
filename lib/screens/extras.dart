import 'package:flutter/material.dart';

class extras extends StatefulWidget {
  @override
  State<extras> createState() {
    return _extrasState();
  }
}

class _extrasState extends State<extras> {

  List extrasList = [
    "Libros",
    "Videos",
    "Otras aplicaciones",
    "Revistas"
  ];


  List<Image> imgList = [
    Image.asset("images/libro.png",height: 100,width: 100),
    Image.asset("images/video.png",height: 100,width: 100),
    Image.asset("images/diseno-ux.png",height: 100,width: 100),
    Image.asset("images/revista.png",height: 100,width: 100),
  ];
  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 170, 193, 232),
      appBar: AppBar(
        foregroundColor: Colors.black,
        backgroundColor: Color.fromARGB(255, 170, 193, 232),
        elevation: 0,
        centerTitle: true,
        title: Text(
          "Extras",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            letterSpacing: 1,
          ),
        ),
    ),
        body: ListView(
          children: [
                  SizedBox(height: 10),
                  GridView.builder(
                      itemCount: extrasList.length,
                      shrinkWrap: true,
                      physics: NeverScrollableScrollPhysics(),
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        childAspectRatio: (MediaQuery.of(context).size.height - 50 - 25) / (4 * 240),
                        mainAxisSpacing: 10,
                        crossAxisSpacing: 10,
                      ),
                      itemBuilder: (context,index){
                        return InkWell(
                          onTap: (){},
                          child: Container(
                            padding:
                            EdgeInsets.symmetric(vertical: 20,horizontal: 10),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Color.fromARGB(200, 5, 19, 38).withOpacity(0.8),
                            ),
                            child: Column(
                              children: [
                                Padding(
                                  padding: EdgeInsets.all(10),
                                  child: Center(
                                    child: imgList[index],
                                  ),
                                ),
                                SizedBox(height: 10),
                                Text(
                                  extrasList[index],
                                  style: TextStyle(
                                    fontSize: 25,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.white.withOpacity(0.6),
                                  ),
                                )
                              ],
                            ),
                          ),
                        );
                      }
                  )
                ],
              ),
            );
  }
}