import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:week_1_task/second_screen.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  Widget getText(String name){
    return Padding(padding: EdgeInsets.symmetric(horizontal: 20.0),
      child: Text(name,style: TextStyle(color: Colors.grey,fontWeight: FontWeight.w600),),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
            children: [
              Padding(padding: EdgeInsets.only(right: 300,top: 10),
                child: Icon(Icons.arrow_back_ios),
              ),
              Padding(padding: EdgeInsets.only(left: 20,top: 120),
                child: Text('Log in to Muz',
                  style: TextStyle(
                      color: Color(0xff014343),fontSize: 30.0,fontWeight: FontWeight.w900),
                ),
              ),
              SizedBox(height: 60.0,),
             getText('Email address'),
             SizedBox(height: 10.0),
              Padding(padding: EdgeInsets.symmetric(horizontal: 20.0),
                child:  TextField(
                  decoration: InputDecoration(
                      hintText: ('Monik.bork@wp.pl'),
                      hintStyle: TextStyle(color: Colors.black,fontWeight: FontWeight.w900),
                      contentPadding: EdgeInsets.symmetric(horizontal: 14,vertical: 20),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8.0),

                      )
                  ),
                ),
              ),
              SizedBox(height: 40,),
              getText('Password'),
              SizedBox(height: 10.0),
              Padding(padding: EdgeInsets.symmetric(horizontal: 20.0),
                child:  TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                      hintStyle: TextStyle(color: Colors.black,fontWeight: FontWeight.w900),
                      contentPadding: EdgeInsets.symmetric(horizontal: 14,vertical: 20),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8.0),

                      ),

                  ),
                ),
              ),
              Padding(
                padding:  EdgeInsets.only(right: 195),
                child: TextButton(
                    onPressed: (){},
                    child: Text("Forgot Password?",
                      style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 15.0,
                        decoration: TextDecoration.underline,
                        decorationStyle: TextDecorationStyle.solid
                      ),
                    )
                ),
              ),
              SizedBox(height: 70.0,),
               Padding(
                 padding: const EdgeInsets.symmetric(horizontal: 20.0),
                 child: TextButton(
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Color(0xffE7CDC6)),
                    minimumSize: MaterialStateProperty.all(Size(20, 50)),
                    shape: MaterialStateProperty.all(RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8.0)
                    ))
                  ),
                    onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context){
                      return SecondScreen();
                    }));
                    },
                    child: Text('Log in',
                    style: TextStyle(
                    color: Colors.black,
                      fontWeight: FontWeight.w600,
                      fontSize: 15
                    ),
                    )),
               )
            ],
          ),

    );
  }
}
