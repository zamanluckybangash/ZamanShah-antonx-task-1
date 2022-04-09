import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'fifth_screen.daart.dart';

class FourthScreen extends StatefulWidget {
  const FourthScreen({Key? key}) : super(key: key);

  @override
  _FourthScreenState createState() => _FourthScreenState();
}

class _FourthScreenState extends State<FourthScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          SizedBox(height: 40.0),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Museum',
                  style: TextStyle(
                      color: Color(0xff014343),fontSize: 30.0,fontWeight: FontWeight.w700),
                ),
                IconButton(
                    icon: Icon(Icons.article),
                    onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context){
                        return FifthScreen();
                      }));
                    })
              ],
            ),
          ),
          DefaultTabController(
              length: 5,
              child: TabBar(
                  tabs: [
                    Tab(icon: Icon(Icons.article,color: Colors.red,),
                    text: ('Top Visited'),

                    ),
                    Tab(icon: Icon(Icons.directions_bike),),
                    Tab(icon: Icon(Icons.article),),
                    Tab(icon: Icon(Icons.article),),
                    Tab(icon: Icon(Icons.article),)
                  ]
              )
          ),
          SizedBox(height: 20.0,),
          Padding(
            padding: const EdgeInsets.only(left: 20,right: 20,),
            child: Container(
              height: 250,
              width: 200,
              child: Card(
                child: Padding(
                  padding: const EdgeInsets.only(left: 20.0,right: 20.0,top: 15.0,bottom: 10.0),
                  child: Container(
                    //height: 100.0,
                    //width: 200.0,
                    child: Column(
                      children: [
                        Image.asset('images/pic 8.jpg'),
                        const ListTile(
                          title: Text('POLING Museum of the history of polish jews',
                            style: TextStyle(color: Colors.black),),
                          trailing: Icon(Icons.article),
                        ),
                        SizedBox(height: 30.0,),
                        Row(
                          children: const [
                            Padding(
                              padding: EdgeInsets.only(left: 10.0),
                              child: Icon(Icons.add_location),
                            ),
                            Text('Anielewicza 6, 00-153',
                              style: TextStyle(
                                  color: Colors.grey,
                                  fontWeight: FontWeight.w700
                              ),)
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
          SizedBox(height: 10.0,),
          Padding(
            padding: const EdgeInsets.only(left: 20,right: 20,),
            child: Container(
              height: 250,
              width: 200,
              child: Card(
                child: Padding(
                  padding: const EdgeInsets.only(left: 20.0,right: 20.0,top: 15.0,bottom: 10.0),
                  child: Container(
                    height: 100.0,
                    width: 200.0,
                    child: Column(
                      children: [
                        Image.asset('images/pic 9.jpg'),
                        const ListTile(
                          title: Text('Fryderyk Chopin Museum',
                            style: TextStyle(color: Colors.black),),
                          trailing: Icon(Icons.article),
                        ),
                        SizedBox(height: 30.0,),
                        Row(
                          children: const [
                            Padding(
                              padding: EdgeInsets.only(left: 10.0),
                              child: Icon(Icons.add_location),
                            ),
                            Text('Palac Gninskick, 00-368',
                              style: TextStyle(
                                  color: Colors.grey,
                                  fontWeight: FontWeight.w700
                              ),)
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
          )
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.article_rounded),
              label: 'Circle'
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.article_rounded),
              label: 'Circle'
          ),
        ],
        onTap: (int selectedItem){
          setState(() {
            currentIndex = selectedItem;
          });
        },
      ),
    );
  }
  int currentIndex = 0;
}
