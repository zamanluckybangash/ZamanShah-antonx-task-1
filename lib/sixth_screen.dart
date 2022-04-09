import 'package:flutter/material.dart';

class SixthScreen extends StatefulWidget {
  const SixthScreen({Key? key}) : super(key: key);

  @override
  _SixthScreenState createState() => _SixthScreenState();
}

class _SixthScreenState extends State<SixthScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            child: Image.asset("images/Promise.jpg"),
            height: 360,
          ),
          Padding(padding: EdgeInsets.only(top: 280,bottom: 120),
            child: Container(
              height: 500,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: Colors.white
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 20,right: 20.0,top: 20.0,bottom: 40.0),
                child: Card(
                  child: Column(
                    children: [
                      Row(
                        children: [

                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              children: [
                                Text('POLIN Museum',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.w700,
                                      fontSize: 15.0
                                  ),
                                ),
                                SizedBox(width: 155,),
                                Card(
                                  child: Icon(Icons.photo_album),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            Expanded(
                              child: RichText(
                                  text: TextSpan(
                                      children: [
                                        TextSpan(
                                            text: "It is a historical Museum which "
                                                "presents the 100 years of"
                                                "Jewswish life in the polish lands. "
                                                "it is also a place of...",
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontWeight: FontWeight.w600
                                            )
                                        ),
                                        TextSpan(
                                            text: 'more',
                                            style: TextStyle(
                                                color: Colors.red,
                                                fontWeight: FontWeight.w600
                                            )
                                        )
                                      ]
                                  )
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 10.0,),
                      Row(
                        children: [
                          Card(
                            child: Image.asset("images/laptop.jpg",width: 60,height: 50,),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 28.0),
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(right: 45.0),
                                  child: Text('Anielewicza',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                ),
                                SizedBox(height: 5.0,),
                                Text("00-157 , Warszawa",
                                  style: TextStyle(
                                    color: Colors.grey,
                                    fontWeight: FontWeight.w900,
                                  ),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                      SizedBox(height: 10.0,),
                      Row(
                        children: [
                          Card(
                            child: Icon(Icons.radio,size: 60,),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 25.0),
                            child: Column(
                              children: [
                                Text('Today open',
                                  style: TextStyle(
                                    color: Colors.grey,
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                                SizedBox(height: 5.0,),
                                Text("10am - 6pm",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w900,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 20.0,left: 5.0),
                            child: Icon(Icons.keyboard_arrow_down),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 610.0,left: 25),
            child: Text('News',
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 15,
                  fontWeight: FontWeight.w600
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 670.0,left: 23,right: 23,bottom: 2),
            child: Container(
                height: 250,
                //width: 160,
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 1),
                      child: Image.asset('images/Promise.jpg',),
                    ),
                    Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 40.0,top: 2),
                          child: Text("08 Mar, 2020",
                            style: TextStyle(color: Color(0xff014343),fontWeight: FontWeight.w700),
                          ),
                        ),
                        SizedBox(height: 3.0,),
                        Padding(
                          padding: const EdgeInsets.only(left: 20.0),
                          child: Text('Exibition: Modern Love',
                            style: TextStyle(color: Colors.grey,fontWeight: FontWeight.w700),
                          ),
                        ),
                        SizedBox(height: 10,),
                        Row(
                          children: [
                            Icon(Icons.add_location),
                            Text("Tamka")
                          ],
                        )
                      ],
                    )
                  ],
                )
            ),
          ),
        ],
      ),
    );
  }
}
