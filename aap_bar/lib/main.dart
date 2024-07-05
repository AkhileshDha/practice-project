
import 'package:flutter/material.dart';

void main(){
  runApp(Bar());
}
class Bar extends StatelessWidget {
  const Bar({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:DefaultTabController(
        length: 5,
      child: Scaffold(
          appBar:AppBar(
            title: Text('Yash Stationary'),
            backgroundColor: Colors.indigo,
            actions: [
              IconButton(
                  icon: Icon(Icons.share),
                  onPressed:(){}),
              IconButton(
                  icon:Icon(Icons.account_box_outlined),
                  onPressed:(){}),
              IconButton(
                icon: Icon(Icons.search_rounded),
                onPressed: (){},)
            ],
            flexibleSpace: Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors:[Colors.blueAccent,Colors.grey],
                  begin: Alignment.bottomRight,
                  end: Alignment.topLeft,
                )
              ),
            ),
            bottom: TabBar(
              indicatorColor: Colors.white,
            indicatorWeight: 4.0,
            tabs: [
                Tab(icon: Icon(Icons.home),text: 'Home',),
                Tab(icon: Icon(Icons.book), text:'Book'),
              Tab(icon:Icon(Icons.browse_gallery),text: 'Gallery',),
              Tab(icon: Icon(Icons.production_quantity_limits_rounded),text: 'Product',),
              Tab(icon: Icon(Icons.contact_page),text: 'Contact',)
            ],
            ),
          ),
        drawer: Drawer(),

       
      ),
      ),
    );
  }
}


