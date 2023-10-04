import 'package:bucher/widgets/Custom_appbar/custom_appbar.dart';
import 'package:bucher/screens/___Students/S_ViewAll/student_viewall.dart';
import 'package:bucher/widgets/Students_Navbar/navbar_students.dart';
import 'package:flutter/material.dart';

import '../../../widgets/Drawer/drawer_students.dart';
import '../../../widgets/Students/gridview_Student.dart';


class StudentHome extends StatelessWidget {
  const StudentHome({super.key});

  @override
  Widget build(BuildContext context) {
    PreferredSizeWidget? wid;
    return SafeArea(
      child: Scaffold(
          appBar: CustomAppbar(
            title: 'Home',
            onPressed: () {

          

            },
            child: GestureDetector(
              // onTap: (){
              //   print('------------------*****************');
              //    Navigator.of(context).push(MaterialPageRoute(builder: (ctx)=> DrawerStdents()));
              //   // Scaffold.of(context).openDrawer();
              // },
              child: Icon(Icons.menu,size: 20,)),
          ),
          drawer: DrawerStdents(),
             body:
             
                 Column(
                          children: [
                Align(
                    alignment: Alignment.centerRight,
                    child: TextButton(onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(builder:(ctx)=> StudentViewall()));
                    }, child: Text("View All"))),
                
                 Expanded(
                   child:GridviewStudents(),
                 )
                          ],)
                          // ,bottomNavigationBar: BottomNavigationBar(items: items)
                          
                          // Gnavbar_students()
                        
                        ),
     );
  
  }
}
