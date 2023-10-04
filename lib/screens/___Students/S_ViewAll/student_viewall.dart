import 'package:bucher/widgets/ViewAll/gridview_viewall.dart';
import 'package:flutter/material.dart';

import '../../../widgets/Custom_appbar/custom_appbar.dart';

class StudentViewall extends StatelessWidget {
  const StudentViewall({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    
  appBar: CustomAppbar(title: "ViewAll", child: Icon(Icons.menu), onPressed: (){}),

 body: ViewallGrid(),


    );
  }
}