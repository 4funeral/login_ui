import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SafeArea(
          child: Column(
            children: [
              SizedBox(height: 35,),
              Center(
                child:  Text('Login',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 35),
                ),
              ),

                  Container(
                    padding: EdgeInsets.all(36.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Username'),
                        TextFormField(
                          decoration: InputDecoration(
                            hintText: 'Type your username',prefixIcon: Icon(Icons.person_outline),
                            hintStyle: TextStyle(
                              color: Colors.grey,
                            ),
                            prefixIconColor: Colors.grey,
                          ),
                        ),


                        // Password
                        SizedBox(height: 25.0),
                        Text('Password'),
                        TextFormField(
                          obscureText: true,
                          decoration: InputDecoration(
                            prefixIcon: Icon(Icons.lock_outline_rounded),
                           hintText: 'Type your password',
                            hintStyle: TextStyle(
                              color: Colors.grey,
                            ),
                            prefixIconColor: Colors.grey,
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text('Forgot password?'),
                          ],
                        ),
                        SizedBox(height: 20,),

                        Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                                ElevatedButton(
                                  onPressed: (){

                                }, child: Text('Login',style: TextStyle(
                                  color: Colors.white,fontWeight: FontWeight.bold
                                ),

                                ),
                                  style:ElevatedButton.styleFrom(shadowColor:Colors.purple[700],
                                    backgroundColor: Colors.cyanAccent[700],
                                    foregroundColor: Colors.purple,


                                  ),
                                ),
                              SizedBox(height: 35.0,),
                              Center(child: Text('Or Sign Up Using',style:TextStyle(
                                color: Colors.grey[600],
                                fontWeight: FontWeight.bold,
                              ),),
                              ),

                            SizedBox(height: 20.0,),


                               Row(

                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  

                                     Image.asset('images/fb.png',width: 35,height: 35,),

                                  SizedBox(
                                    width: 5.0,

                                  ),

                                   Image.asset('images/x.png',width: 35,height: 35),

                                  SizedBox(
                                    width: 5.0,

                                  ),

                                  Image.asset('images/google.png',width: 35,height: 35,),

                                ],
                            ),
                            
                          ],
                        ),


                      ],
                    ),
                  ),
              SizedBox(height: 230,),
              Text('Or Sign Up Using',style:TextStyle(
                color: Colors.grey[600],
                fontWeight: FontWeight.bold,
              ),),

              SizedBox(height: 30,),

              Text('SIGN UP',style:TextStyle(
                color: Colors.grey[600],
                fontWeight: FontWeight.bold,
              ),),
            ],
          ),
        ),
      ),

    );
  }
}
