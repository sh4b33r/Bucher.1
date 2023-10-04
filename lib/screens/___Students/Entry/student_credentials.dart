import 'package:bucher/screens/___Students/S_Home/home_screen.dart';
import 'package:flutter/material.dart';

class StudentCredtials extends StatelessWidget {
  const StudentCredtials({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(image:DecorationImage(image:AssetImage('assets/image/stuents.jpg',),fit:BoxFit.cover )),
        child:SingleChildScrollView(
 child:Padding(
                padding: const EdgeInsets.all(25.0),
                child: Column(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: Color.fromARGB(118, 144, 173, 197),
                        border:Border.all(color: Color.fromARGB(255, 5, 43, 75))
                      ),
                      // color: Color.fromARGB(118, 144, 173, 197),
                      height: 60,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Text("college id"),
                          ),
                          

                          
                        ],
                      ),
                    ),
                    ElevatedButton(onPressed: (){

                      Navigator.of(context).push(MaterialPageRoute(builder: (ctx) =>StudentHome() ));
                    }, child:Text("Submit"))
                  ],
                ),) ,          


        )
      ),
      
    )
;
  }
}