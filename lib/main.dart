import 'package:flutter/material.dart';
import 'package:myfamillygrid/modelclass.dart';

void main() {
  runApp(
    MaterialApp(debugShowCheckedModeBanner: false, home: const Myfamily()),
  );
}

class Myfamily extends StatefulWidget {
  const Myfamily({Key? key}) : super(key: key);

  @override
  State<Myfamily> createState() => _MyfamilyState();
}

class _MyfamilyState extends State<Myfamily> {
  List fam = [
    Family(
      image: "home/calender.png",
      text1: "Calender",
      text2: "March,Wednesday",
      text3: "3 Events",
    ),
    Family(
        image: "home/groceries.png",
        text1: "Groceries",
        text2: "Bocali,Apple",
        text3: "4 Items"),
    Family(
        image: "home/location.png",
        text1: "Locations",
        text2: "Lucy Mao going Office",
        text3: ""),
    Family(
        image: "home/circus.png",
        text1: "Activity",
        text2: "Rose Favirited your Post",
        text3: ""),
    Family(
        image: "home/todo.png",
        text1: "To Do",
        text2: "Home Work,Design",
        text3: "4 Items"),
    Family(
        image: "home/settings.png",
        text1: "Settings",
        text2: "",
        text3: "2 Items")
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff30A688),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,

          children: [
            Padding(
              padding: const EdgeInsets.all(60.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "My Family",
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(
                        height: 12,
                      ),
                      Text(
                        "Home",
                        style: TextStyle(
                          fontSize: 15,
                          color: Colors.black45,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  CircleAvatar(

                    child: Image(
                      image: NetworkImage(
                        "https://cdn-icons-png.flaticon.com/512/4457/4457168.png",
                      ),
                    ),
                    radius: 35,
                    backgroundColor: Color(0xff30A688),

                  ),
                ],
              ),
            ),
            SizedBox(
              height: 2,
            ),
            GridView.builder(
                shrinkWrap: true,
                itemCount: fam.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  childAspectRatio: 10 / 12,
                  crossAxisSpacing: 1,
                  mainAxisSpacing: 1,
                ),
                itemBuilder: (BuildContext, int index) {
                  return GridTile(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        // height: 25,
                        //   width: 25,
                        color: Colors.tealAccent,
                        child: Expanded(
                          child: Padding(
                            padding: const EdgeInsets.all(29.0),
                            child: Center(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(14.0),
                                    child: Image.asset(fam[index].image),
                                  ),
                                  Text(
                                    fam[index].text1,
                                    style: TextStyle(fontSize: 13,fontWeight: FontWeight.bold),
                                  ),

                                  Text(
                                    fam[index].text2,
                                    style: TextStyle(fontSize:8 ),
                                  ),

                                  Text(
                                    fam[index].text3,
                                    style: TextStyle(fontSize: 7),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  );
                }),
          ],
        ),
      ),
    );
  }
}
