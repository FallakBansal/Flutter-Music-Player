import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 3.0,
        centerTitle: true,
        backgroundColor: Color(0xDD000000),
        title: Text(
          "Music Player", 
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.white70,
            ), 
          ),
      ),

      
      body: Column(
        children: [
          Expanded(
            child: Container(
            color: Colors.black87 ,
              padding: EdgeInsets.symmetric(
                vertical: 10,
                horizontal:10,
                ),
              child: Column(
                children: [
                  Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25)
                    ),
                    child: Container(
                      height: 220,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25),
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: NetworkImage('https://wallpapercave.com/wp/wp4971624.jpg'),
                        ),
                      ),
                    ),
                  ),
                  
                  
                ],
              ),
            ),
          ),
          Expanded(
            child: Container(
              color: Colors.black87 ,
              padding: EdgeInsets.symmetric(
                vertical: 10,
                horizontal: 10,
                ),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(5),
                    child: Text("..Let's play some songs..", style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.white70,
                    ),
                    ),
                  ),
                  Card(
                      child: Container(
                      color: Colors.white70,
                      height: 60,
                      //width: 150,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.play_arrow,
                            size: 40,),
                            Icon(
                            Icons.stop_circle_outlined,
                            size: 40,),
                        ],
                      ),
                    ),
                  ),
                  Card(
                    child: Container(
                      child: Row(
                        children: [
                Padding(
                  padding: EdgeInsets.all(10),
                  child: Chip(
                      backgroundColor: Colors.purple.shade100,
                      label: Container(
                          padding: EdgeInsets.all(10),
                          child: Text("Hindi"))),
                ),
                Container(
                  padding: EdgeInsets.all(10),
                  child: Chip(
                      backgroundColor: Colors.purple.shade100,
                      label: Container(
                          padding: EdgeInsets.all(10),
                          child: Text("English"))),
                ),
                Padding(
                  padding: EdgeInsets.all(10),
                  child: Chip(
                      backgroundColor: Colors.purple.shade100,
                      label: Container(
                          padding: EdgeInsets.all(10),
                          child: Text("Punjabi"))),
                ),
              ],
                      ),
                    ),
                  ),
                ],
              ),
              
            ),
            ),
        ],
      ),
    );
  }
}