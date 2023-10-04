
import 'package:bucher/screens/___Admin/A_Home/home_bottombar.dart';
import 'package:bucher/screens/___Admin/Add/add_screen.dart';
import 'package:bucher/widgets/Custom_appbar/custom_appbar.dart';
import 'package:flutter/material.dart';

class AdminHome extends StatelessWidget {
  const AdminHome({super.key});

  @override
  Widget build(BuildContext context) {
    var pagemove=Navigator.of(context);
    return Scaffold(
  appBar: CustomAppbar(title: "Home", child:  Icon(Icons.menu), onPressed: (){}),
  // bottomNavigationBar: BottomNavigationBar(items: [


  //   BottomNavigationBarItem(icon: GestureDetector(
      
  //     onTap: (){},
  //     child: Icon(Icons.add)),label: 'Add'),
  //      BottomNavigationBarItem( tooltip: "Home" , icon: Icon(Icons.house),label: 'Home'),
  //      BottomNavigationBarItem(icon: Icon(Icons.h_mobiledata),label: 'poigiug')


  // ]),
  bottomNavigationBar: 
  BottomAppBar( 
    child:CustomBottomBar() ,
    )
,
  body:Container(

   child: Column(
   children: [
         Align(child: TextButton(onPressed: (){
         pagemove.push(MaterialPageRoute(builder: (ctx)=> AddScreen() ));

         }, child: Text('Addd')) ,alignment: Alignment.topRight,),
     Expanded(
       child: ListView.builder(itemBuilder: (context, index) {
         return Padding(
          padding: EdgeInsets.all(10),
           child: Dismissible(
          
           
           direction: DismissDirection.startToEnd,
           onDismissed: (DismissDirection direction) {
          if (direction == DismissDirection.startToEnd) {
            print("Add to favorite");
          } else {
            print('Remove item');
          }},
            key: 
             Key('item ${datas[index]}'),
            background: ClipRect(
              clipBehavior:Clip.antiAlias,
              child: ColoredBox(color: const Color.fromARGB(134, 244, 67, 54),child: Padding(
                padding: const EdgeInsets.all(25.0),
                child: Text('Delete'),
              ),),
            ) ,
             child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
               child: ColoredBox(
                color: Color.fromARGB(180, 37, 94, 141),
                      
                 child: ListTile(
                  leading: Image.asset('assets/image/howtostopwor.png'),
                    title:Text(datas[index]),
                   subtitle: Text(datascategory[index]),
                   trailing: Switch(value: false, onChanged: (_){},activeColor: Colors.red,inactiveThumbColor: Colors.green),
                    
                    
                 ),
               ),
             ),
           ),
         );
        
     
     
     
     
     
     
       },
        itemCount: 10,
       ),
     )



   ],
   
   
   
   
    
   ),
 

      



  )
  
 



    );
  }
}


final List<String> datas=[
 'Rich Dad',
 'How to Become Rich',
 'You can',
 'Sherlock Holmes',
 'Lion Inside',
 'Atomic Habits',
 'The Time Machine',
 'Alchemist',
 'Ego Enemy',
 'Sherlock Holmes',
 'Encyclopedia',


];
final List<String> datascategory=[
 'Economic',
 'Economic',
 'Inspiring',
 'Fiction',
 'Story',
 'Motivational',
 'Sci-Fi',
 'Life Story',
 'Motivational',
 'FIction',
 'Knowledge',

];
