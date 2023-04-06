import 'package:flutter/material.dart';

void main() {
  runApp(basketapp());
}

class basketapp extends StatefulWidget {
  @override
  State<basketapp> createState() => _basketappState();
}

class _basketappState extends State<basketapp> {
    int  teamApoints =0;
    int  teamBpoints =0;

@override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.cyanAccent,
          title: const Text("Points Counter"),
        ),
        body: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  height: 500,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        "Team A",
                        style: TextStyle(fontSize: 30),
                      ),
                       Text(
                        "$teamApoints",
                        style: TextStyle(fontSize: 80),
                      ),
                      ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.cyanAccent,
                              minimumSize: Size(140, 50)
                          ),
                          onPressed: (){
                            setState(() {
                              teamApoints+=1;
                            });
                          },
                          child: const  Text("Add 1 point",
                            style: TextStyle(
                              fontSize: 20,
                              color: Colors.black,
                            ),)),

                      ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.cyanAccent,
                              minimumSize: Size(140, 50)
                          ),
                          onPressed: (){
                            setState(() {
                              teamApoints+=2;
                            });
                          },
                          child: const Text("Add 2 point",
                            style: TextStyle(
                              fontSize: 20,
                              color: Colors.black,
                            ),)),
                      ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.cyanAccent,
                              minimumSize: Size(140, 50)
                          ),
                          onPressed: (){
                            setState(() {
                              teamApoints+=3;
                            });
                          },
                          child: const Text("Add 3 point",
                            style: TextStyle(
                              fontSize: 20,
                              color: Colors.black,
                            ),)),
                    ],
                  ),
                ),
                Container(
                  height: 500,
                  child: const  VerticalDivider(
                    color: Colors.grey,
                    thickness: 1,
                  ),
                ),
                Container(
                  height: 500,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      const Text(
                        "Team B",
                        style: TextStyle(fontSize: 30),
                      ),
                     Text(
                        "$teamBpoints",
                        style: TextStyle(fontSize: 80),
                      ),
                      ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.cyanAccent,
                              minimumSize: Size(140, 50)
                          ),
                          onPressed: (){
                            setState(() {
                              teamBpoints+=1;
                            });
                          },
                          child: const  Text("Add 1 point",
                            style: TextStyle(
                              fontSize: 20,
                              color: Colors.black,
                            ),)),
                      ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.cyanAccent,
                              minimumSize: Size(140, 50)
                          ),
                          onPressed: (){

                            setState(() {
                              teamBpoints+=2;
                            });
                          },
                          child: const Text("Add 2 point",
                            style: TextStyle(
                              fontSize: 20,
                              color: Colors.black,
                            ),)),
                      ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.cyanAccent,
                              minimumSize: Size(140, 50)
                          ),
                          onPressed: (){

                            setState(() {
                              teamBpoints+=3;
                            });
                          },
                          child: const Text("Add 3 point",
                            style: TextStyle(
                              fontSize: 20,
                              color: Colors.black,
                            ),)),
                    ],
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top:35),
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.cyanAccent,
                      minimumSize: Size(140, 50)
                  ),
                  onPressed: (){
                    setState(() {
                      teamBpoints=0;
                      teamApoints=0;
                    });
                  },
                  child: const  Text("Reset",
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.black,
                    ),)),
            ),
          ],
        ),
      ),
    );
  }
}
