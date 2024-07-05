

import 'package:flutter/material.dart';

void main(){
runApp(Bu());
}
class Bu extends StatelessWidget {
  const Bu({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:DefaultTabController(
        length: 4,
        child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: Text("Flutter Button"),
          centerTitle: true,
          actions: [
            IconButton(
                icon:Icon(Icons.share),
                onPressed: (){},
            ),
            IconButton(
              icon:Icon(Icons.notification_add),
              onPressed: (){},
            ),
            IconButton(
              icon:Icon(Icons.search_rounded),
              onPressed: (){},
            ),
          ],
          // elevation: 20.0,
          flexibleSpace: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [Colors.redAccent,Colors.purpleAccent],
                begin: Alignment.bottomRight,
                end: Alignment.topLeft,
              ),

            ),
          ),
          bottom:TabBar(
            indicatorColor: Colors.white,
            indicatorWeight: 5.0,
            tabs: [
              Tab(icon:Icon(Icons.home),text:'Home'),
              Tab(icon: Icon(Icons.star),text:'Feed'),
              Tab(icon: Icon(Icons.face),text:'Profile'),
              Tab(icon: Icon(Icons.settings),text: 'Setting',),
            ],
          ),
        ),
        drawer: Drawer(),
          body: Center(
            child: Container(
              child: Text('Akhilesh'),
            ),
          ),
          ),
        ),
    );
  }
}