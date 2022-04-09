import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:week_1_task/fourth_screen.dart';

class ThirdScreen extends StatefulWidget {
  const ThirdScreen({Key? key}) : super(key: key);

  @override
  _ThirdScreenState createState() => _ThirdScreenState();
}

class _ThirdScreenState extends State<ThirdScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          SizedBox(height: 30.0),
          Row(
            children: [
               IconButton(
                  icon: Icon(Icons.add_location),
                  onPressed: (){
                    setState(() {
                      Navigator.push(context, MaterialPageRoute(builder: (context){
                        return FourthScreen();
                      }));
                    });
                  },
                ),
               Text('Warszawa',
                  style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.w800,
                      color: Colors.grey
                  ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 15.0,),
                child: Icon(Icons.keyboard_arrow_down,color: Colors.grey,),
              ),
            ],
          ),
          SizedBox(height: 20.0,),
          Padding(
              padding: const EdgeInsets.only(right: 190.0),
              child: TextButton(
                child: Text('News and Exibitions',
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
              height: 175,
              width: 70,
              child: Card(
                child:
                Row(
                  //crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                        height: 250,
                        width: 160,
                        child: Image.asset('images/Promise.jpg',)
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 5.0),
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
                              padding:  EdgeInsets.only(left: 6.0),
                              child: Text('Exibition: Buildings than and now',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.w700
                                  )
                              ),
                            ),
                            SizedBox(height: 35.0,),
                            Padding(
                              padding: const EdgeInsets.only(right: 25.0,top: 10),
                              child: Row(
                                //mainAxisAlignment: MainAxisAlignment.center,
                                children: const [
                                   Icon(Icons.add_location,),
                                   Expanded(child: Text('Tamka 25',
                                      style: TextStyle(
                                          color: Colors.grey,
                                          fontWeight: FontWeight.w300
                                      ),),
                                   )
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    Expanded(child: Padding(
                      padding: const EdgeInsets.only(bottom: 100),
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
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5.0),
            child: Container(
              height: 175,
              width: 70,
              child: Card(
                child:
                Row(
                  //crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                        height: 250,
                        width: 160,
                        child: Image.asset('images/Promise.jpg',)
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 5.0),
                      child: Container(
                        height: 150,
                        width: 110,
                        child: Column(
                          children: [
                            Text('01 April 2020',
                              style: TextStyle(
                                  color: Colors.grey,
                                  fontWeight: FontWeight.w700
                              ),
                            ),
                            SizedBox(height: 10.0,),
                            Padding(
                              padding:  EdgeInsets.only(left: 6.0),
                              child: Text('Lecture: Modern Love and others',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.w700
                                  )
                              ),
                            ),
                            SizedBox(height: 35.0,),
                            Padding(
                              padding: const EdgeInsets.only(right: 25.0,top: 10),
                              child: Row(
                                //mainAxisAlignment: MainAxisAlignment.center,
                                children: const [
                                  Icon(Icons.add_location,),
                                  Expanded(child: Text('Tamka 25',
                                    style: TextStyle(
                                        color: Colors.grey,
                                        fontWeight: FontWeight.w300
                                    ),),
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    Expanded(child: Padding(
                      padding: const EdgeInsets.only(bottom: 100),
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
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5.0),
            child: Container(
              height: 175,
              width: 70,
              child: Card(
                child:
                Row(
                  //crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                        height: 250,
                        width: 160,
                        child: Image.asset('images/Promise.jpg',)
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 5.0),
                      child: Container(
                        height: 150,
                        width: 110,
                        child: Column(
                          children: [
                            Text('18 May 2020',
                              style: TextStyle(
                                  color: Colors.grey,
                                  fontWeight: FontWeight.w700
                              ),
                            ),
                            SizedBox(height: 10.0,),
                            Padding(
                              padding:  EdgeInsets.only(left: 6.0),
                              child: Text('Exibition: Inerior design from ||X',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.w700
                                  )
                              ),
                            ),
                            SizedBox(height: 35.0,),
                            Padding(
                              padding: const EdgeInsets.only(right: 25.0,top: 10),
                              child: Row(
                                //mainAxisAlignment: MainAxisAlignment.center,
                                children: const [
                                  Icon(Icons.add_location,),
                                  Expanded(child: Text('Tamka 25',
                                    style: TextStyle(
                                        color: Colors.grey,
                                        fontWeight: FontWeight.w300
                                    ),),
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    Expanded(child: Padding(
                      padding: const EdgeInsets.only(bottom: 100),
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
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5.0),
            child: Container(
              height: 175,
              width: 70,
              child: Card(
                child:
                Row(
                  //crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                        height: 250,
                        width: 160,
                        child: Image.asset('images/Promise.jpg',)
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 5.0),
                      child: Container(
                        height: 150,
                        width: 110,
                        child: Column(
                          children: [
                            Text('19 May 2020',
                              style: TextStyle(
                                  color: Colors.grey,
                                  fontWeight: FontWeight.w700
                              ),
                            ),
                            SizedBox(height: 10.0,),
                            Padding(
                              padding:  EdgeInsets.only(left: 6.0),
                              child: Text('Exibition: Modern Love and others',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.w700
                                  )
                              ),
                            ),
                            SizedBox(height: 35.0,),
                            Padding(
                              padding: const EdgeInsets.only(right: 25.0,top: 10),
                              child: Row(
                                //mainAxisAlignment: MainAxisAlignment.center,
                                children: const [
                                  Icon(Icons.add_location,),
                                  Expanded(child: Text('Tamka 25',
                                    style: TextStyle(
                                        color: Colors.grey,
                                        fontWeight: FontWeight.w300
                                    ),),
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    Expanded(child: Padding(
                      padding: const EdgeInsets.only(bottom: 100),
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
  int currentIndex=0;
}
