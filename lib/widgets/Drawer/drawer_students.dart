import 'package:flutter/material.dart';

class DrawerStdents extends StatelessWidget {
  const DrawerStdents({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Color.fromARGB(72, 27, 43, 149),
      width: MediaQuery.of(context).size.width / 1.9,
        child: Padding(
          padding: const EdgeInsets.all(30.0),
          child: SingleChildScrollView(
            
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("geloo",style: TextStyle(color: Colors.amber,fontSize: 50),),
                SizedBox(height: 10,),
                 Text("geloo",style: TextStyle(color: Colors.amber,fontSize: 50),),
                 SizedBox(height: 10,),
                 Text("geloo",style: TextStyle(color: Colors.amber,fontSize: 50),),
                 SizedBox(height: 10,),
                Text("geloo",style: TextStyle(color: Colors.amber,fontSize: 50),),
                 SizedBox(height: 10,),
                 Text("geloo",style: TextStyle(color: Colors.amber,fontSize: 50),),
                 SizedBox(height: 10,),
                Text("geloo"),
              
              ],
            ),
          ),
        ),
      );

  }
}
