import 'package:flutter/material.dart';

class todoHomeScreen extends StatefulWidget {
  const todoHomeScreen({Key? key}) : super(key: key);

  @override
  State<todoHomeScreen> createState() => _todoHomeScreenState();
}

class _todoHomeScreenState extends State<todoHomeScreen> {

  int currentIndex =0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        title: Text(
          "Todo App",
        ),
      ),
      floatingActionButton: FloatingActionButton(
          onPressed:(){},
        child: Icon(
          Icons.add,
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: currentIndex,
        onTap: (index){
          setState(() {
            currentIndex=index;
          });
        },
        items: [
          BottomNavigationBarItem(
              icon:Icon(Icons.menu,),
              label: "Tasks",
          ),
          BottomNavigationBarItem(
              icon:Icon(Icons.check,),
              label: "Done"),
          BottomNavigationBarItem(
              icon:Icon(Icons.archive_outlined,),
              label: "Archived"),
        ],
      ),
    );
  }
}
