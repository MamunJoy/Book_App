import 'package:book_app/about_page.dart';
import 'package:book_app/home_page.dart';
import 'package:flutter/material.dart';
class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  List <Widget> pages = [ HomePage(), AboutPage()];
   int index=0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Book App"),
      ),

      drawer: Drawer(
        child: Column(
          children: [

            SizedBox(height:20,),
            Image.asset("assets/images/booksiconios113.jpg",
              height: 120,
              width: 120),

            SizedBox(height: 10,),
            Text("BOOk", style: TextStyle(
              fontSize: 16,
            ),),

            Divider(color: Colors.orange,
            indent: 17,
            endIndent: 17,),

           SizedBox(height: 20,),

           ListTile(
             leading: Icon(Icons.home) ,
             title: Text("Home Page") ,
             trailing:Icon(Icons.arrow_forward_ios) ,
             onTap: (){
               Navigator.pop(context);
             },
           ),


            ListTile(
              leading: Icon(Icons.dashboard) ,
              title: Text("More apps") ,
              trailing:Icon(Icons.arrow_forward_ios) ,
            ),
            ListTile(
              leading: Icon(Icons.info) ,
              title: Text("About") ,
              trailing:Icon(Icons.arrow_forward_ios) ,
            ),
            ListTile(
              leading: Icon(Icons.inbox) ,
              title: Text("Inbox") ,
              trailing:Icon(Icons.arrow_forward_ios) ,
            ),
            ListTile(
              leading: Icon(Icons.access_alarm) ,
              title: Text("Alarm") ,
              trailing:Icon(Icons.arrow_forward_ios) ,
            ),

          ],

        ),
      ),





      bottomNavigationBar: BottomNavigationBar(
        currentIndex: index,
        onTap: (value){
          setState(() {
            index=value;
          });
        },
        selectedItemColor: Colors.cyan,
        unselectedItemColor: Colors.green,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.info), label: "About"),
        ],
      ),
      
      body: pages.elementAt(index),

    );
  }
}
