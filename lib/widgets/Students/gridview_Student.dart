
import 'package:flutter/material.dart';

class GridviewStudents extends StatefulWidget {
  const GridviewStudents({super.key});

  @override
  State<GridviewStudents> createState() => _GridviewStudentsState();
}

class _GridviewStudentsState extends State<GridviewStudents> {
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: MediaQuery.of(context).orientation==Orientation.portrait?SliverGridDelegateWithFixedCrossAxisCount(
                                 crossAxisCount: 2
                                 ):SliverGridDelegateWithFixedCrossAxisCount(
                                 crossAxisCount: 4
                                 ) ,
// MediaQuery.of(context).orientation.Orientation.portrait?
//                                  gridDelegate:SliverGridDelegateWithFixedCrossAxisCount(
//                                  crossAxisCount: 2
//                                  ):
                                 itemBuilder: (context, index) {
                    return Stack(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(15.0),
                            child: Container(
                              decoration: BoxDecoration(
                                  color: Color.fromARGB(189, 91, 134, 178),
                                  borderRadius: BorderRadius.circular(10)),
                            ),
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.only(left: 20, top: 0, bottom: 30),
                            child: Stack(
                              children: [
                                Container(
                                    // decoration: BoxDecoration(boxShadow: [
                                    //   BoxShadow(
                                    //       color: Colors.black, offset: Offset(1, 1))
                                    // ]),
                                  height: 120,
                               
                                  width: 90,
                               
                                  //  color: Colors.amber,
                                  child: Image.asset(
                                    'assets/image/poweofmind.png',
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 130),
                                  child: Text(
                                    "Rich Dad Poor Dad",
                                    style: TextStyle(fontSize: 15),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 160),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      SizedBox(
                                        width: 30,
                                      ),
                                      Text(
                                        "AVAILABLE",
                                        style: TextStyle(
                                            fontSize: 13,
                                            color: Color.fromARGB(
                                              255,
                                              27,
                                              98,
                                              46,
                                            ),
                                            fontWeight: FontWeight.w500),
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ),
                          )
                        ],
                      );
                   
                                
                                 },
                   
                   ); 
  }
}





