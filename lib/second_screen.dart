import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:week_1_task/third_screen.dart';

class SecondScreen extends StatefulWidget {
  const SecondScreen({Key? key}) : super(key: key);

  @override
  _SecondScreenState createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        //scrollDirection: Axis.horizontal,
        children: [
          SizedBox(height: 30.0),
          Row(
            children: const [
              Padding(
                padding: EdgeInsets.only(top: 15.0,left: 10.0),
                child: Icon(Icons.add_location),
              ),
              Padding(
                padding: EdgeInsets.only(top: 15.0, left: 20.0),
                child: Text('Warszawa',
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.w800,
                  color: Colors.grey
                ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 15.0,),
                child: Icon(Icons.keyboard_arrow_down,color: Colors.grey,),
              ),
              Padding(
                padding: EdgeInsets.only(top: 15.0,left: 150),
                child: Icon(Icons.map,color: Colors.grey,),
              ),
            ],
          ),
          SizedBox(height: 20.0,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: Card(
              child: ListTile(
                leading: IconButton(
                  icon: const Icon(Icons.search),
                  onPressed: () {
                    setState(() {

                    });
                  },

                ),
                title: Text('Search Museums',style: TextStyle(color: Colors.grey),),
              ),
            ),
          ),
          SizedBox(height: 40.0,),
          Row(
            children: const [
              Padding(
                padding: EdgeInsets.only(left: 15.0),
                child: Text("Top Visited",
                style: TextStyle(
                  color: Color(0xff014343),
                  fontWeight: FontWeight.w700,
                  fontSize: 15.0
                ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 160.0),
                child: Text("View all",
                  style: TextStyle(
                      color: Colors.grey,
                      fontWeight: FontWeight.w700,
                      fontSize: 15.0
                  ),
                ),
              )
            ],
          ),
          SizedBox(height: 20.0,),
          Padding(
            padding: const EdgeInsets.only(left: 5.0),
            child: Container(
              height: 260,
              width: 200,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Container(
                    height: 300,
                    width: 200,
                    child: Card(
                      child: Column(
                        children: [
                          Image.asset('images/pic 1.jpg'),
                          const ListTile(
                            title: Text('POLING Museum of the history of polish jews',
                            style: TextStyle(color: Colors.black),),
                            trailing: Icon(Icons.article),
                          ),
                          Row(
                            children: const [
                              Padding(
                                padding: EdgeInsets.only(left: 10.0),
                                child: Icon(Icons.add_location),
                              ),
                              Text('Tamka 49, 00453',
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
                   SizedBox(width: 20,),
                  Container(
                    height: 300,
                      width: 200,
                    child: Card(
                      child: Column(
                        children: [
                          Image.asset('images/pic 7.jpg'),
                          SizedBox(height: 10.0,),
                          ListTile(
                            title: Text('Fryderyk chop Museum'),
                          ),
                          SizedBox(height: 30.0,),
                          Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 10.0),
                                child: Icon(Icons.add_location),
                              ),
                              Text('Tamka 49, 00453',
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
                ],
              ),
            ),
          ),
          SizedBox(height: 20.0,),
          Padding(
            padding: const EdgeInsets.only(right: 190.0),
            child: TextButton(
              child: Text('News and Exibutions',
                style: TextStyle(
                    color: Color(0xff014343),
                    fontWeight: FontWeight.w700,
                    fontSize: 15.0
                ),
              ),
              onPressed: (){
                setState(() {
                  Navigator.push(context, MaterialPageRoute(builder: (context){
                    return ThirdScreen();
                  }));
                });
              },
            )
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5.0),
            child: Container(
              height: 135,
              width: 60,
              child: Card(
                child:
                    Row(
                      children: [
                        Container(
                          height: 200,
                            width: 180,
                            child: Image.asset('images/pic 3.jpg',)
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 8.0),
                          child: Container(
                            height: 150,
                            width: 110,
                            child: Column(
                              children: [
                                Text('08 March 2020',
                                style: TextStyle(
                                    color: Colors.grey,
                                  fontWeight: FontWeight.w700
                                ),
                                ),
                                SizedBox(height: 10.0,),
                                Padding(
                                  padding: const EdgeInsets.only(left: 6.0),
                                  child: Text('Exibition: Buildings than and now',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w700
                                  )
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Expanded(child: Padding(
                          padding: const EdgeInsets.only(right: 15.0,bottom: 70),
                          child: ListTile(
                            trailing: Icon(Icons.article),
                          ),
                        )
                        )
                      ],
                    ),
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.home),
            label: 'Home'
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
  int currentIndex =0;
}
