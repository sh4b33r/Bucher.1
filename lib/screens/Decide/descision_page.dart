import 'package:bucher/screens/Decide/librarian_field.dart';
import 'package:flutter/material.dart';
import '../___Admin/Login/admin_login.dart';

import '../___Students/Entry/student_credentials.dart';
import 'student_field.dart';

// import 'package:project/screens/decision_screen/librarian_descision.dart';


class DescisionScreen extends StatelessWidget {
  const DescisionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Image.asset(
                'assets/image/ADMIN.png',
                height: 300,
                width: 300,
              ),
              const SizedBox(
                height: 40,
              ),
              GestureDetector(
                
                 onTap: (){
                  Navigator.of(context).push(MaterialPageRoute(builder: (ctx)=> StudentCredtials()));
                 },
                child: StudentDescision()),
             GestureDetector(
               onTap: (){
     
                Navigator.of(context).push(MaterialPageRoute(builder: (ctx)=> AdminLogin()));
                // navigator.of(context).push(MaterialApp.router(c))
               },
              
              child: LibrarianDescison()),
            ],
          ),
        ),
      ),
    );
  }
}
