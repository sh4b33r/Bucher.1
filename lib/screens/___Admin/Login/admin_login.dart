import 'package:bucher/screens/___Admin/A_Home/home_admins.dart';
import 'package:flutter/material.dart';

class AdminLogin extends StatelessWidget {
  const AdminLogin({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        child: SingleChildScrollView(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
                child: Image.asset(
              'assets/image/logo.jpg',
              height: 250,
              width: 200,
            )),
            Text(
              "Admin Login",
              style: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 30,
                  color: Color.fromARGB(255, 2, 63, 149),
                  fontWeight: FontWeight.w600),
            ),
            SizedBox(
              height: 35,
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(25, 0, 25, 10),
              child: TextFormField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20)),
                  labelStyle:
                      TextStyle(color: const Color.fromARGB(122, 0, 0, 0)),
                  hintText: "Email",
                  focusedBorder: OutlineInputBorder(
                      borderSide:
                          BorderSide(color: Color.fromARGB(255, 13, 6, 203)),
                      borderRadius: BorderRadius.circular(20)),
                  filled: true,
                  fillColor: Color.fromARGB(174, 152, 172, 244),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(25, 5, 25, 10),
              child: TextFormField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20)),
                  labelStyle:
                      TextStyle(color: const Color.fromARGB(122, 0, 0, 0)),
                  hintText: 'Password',
                  focusedBorder: OutlineInputBorder(
                      borderSide:
                          BorderSide(color: Color.fromARGB(255, 13, 6, 203)),
                      borderRadius: BorderRadius.circular(20)),
                  filled: true,
                  fillColor: Color.fromARGB(174, 152, 172, 244),

                ),
              ),


            )
           ,SizedBox(height: 30,),
           ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor:  Color.fromARGB(255, 32, 27, 159)
            ),
            onPressed: (){
              
              Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (ctx)=> AdminHome()));


            }, child: Text('Login',style: TextStyle(fontFamily: 'Poppins') ,
           
           
           
           ))

          ],
        )),
      ),
    );
  }
}
