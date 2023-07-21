import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Container(
      /*decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/me.png'), fit: BoxFit.fill)),*/
      //Adding the buttons
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Stack(
          children: [
            //Adding the skip button
            Container(
              margin: EdgeInsets.only(top: 15, left: 290),
              padding: EdgeInsets.only(top: 30,bottom: 40),
              child: ElevatedButton(
                onPressed: (){},
                child: Text('Skip', style: TextStyle(fontSize: 15.0,color: Colors.black)),
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                  backgroundColor: Colors.orange.shade100,
                ),
              ),
            ),
            //Adding the sign in buttons
            Container(
              //padding: EdgeInsets.only(left: 80, top: 100),
              margin: EdgeInsets.fromLTRB(120, 170, 0, 0),
              height: 160.0,
              width: 160.0,
              //child: Image.asset('assets/images/applogo.png'),
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                      'assets/me.png'),
                  fit: BoxFit.fill,
                ),
                shape: BoxShape.circle,
              ),
            ),
            Container(
              padding: EdgeInsets.only(top: MediaQuery.of(context).size.height*0.45, right: 35, left: 35),
              child: Column(
                children: [
                  ElevatedButton.icon(onPressed: () {  },
                    icon: Icon(Icons.phone_android),
                    label: Text('Continue with Phone',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        )),
                    style: ElevatedButton.styleFrom(primary: Colors.green.shade400,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10), // Rounded corners
                      ),
                      minimumSize: const Size(380, 60),
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  ElevatedButton.icon(onPressed: () {  },
                    icon: Icon(Icons.apple),
                    label: Text('Continue with Apple',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        )),
                    style: ElevatedButton.styleFrom(primary: Colors.black,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10), // Rounded corners
                      ),
                      minimumSize: const Size(380, 60),
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  ElevatedButton.icon(onPressed: () {  },
                    icon: Icon(Icons.email),
                    label: Text('Continue with Email',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        )),
                    style: ElevatedButton.styleFrom(primary: Colors.blue,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10), // Rounded corners
                      ),
                      minimumSize: const Size(380, 60),
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  ElevatedButton.icon(onPressed: () {  },
                    icon: Icon(Icons.facebook),
                    label: Text('Continue with Facebook',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        )),
                    style: ElevatedButton.styleFrom(primary: Colors.indigo,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10), // Rounded corners
                      ),
                      minimumSize: const Size(380, 60),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Container(
              margin: EdgeInsets.only(top: 685, left: 80),
              child: Row(
                children:<Widget> [
                  Text( "Don't have an account?",
                    style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
                  TextButton(onPressed: (){
                    Navigator.pushNamed(context, 'register');
                  }, child: Text('Sign Up',
                      style: TextStyle(
                          fontSize: 16,
                          color: Colors.teal
                      ))),
                ],
              ),
            ),
            Container(
                padding: EdgeInsets.only(top: MediaQuery.of(context).size.height*0.95, right: 30, left: 30),
                child : Wrap(
                  alignment: WrapAlignment.center,
                  direction: Axis.horizontal,
                  children: <Widget>[
                    Text(
                      "By clicking, \'Continue with Email\' above, you agree",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.black, // Add the desired text color
                          fontSize: 12,
                          fontWeight: FontWeight.w500
                      ),
                    ),
                    Text.rich(TextSpan(
                      style: TextStyle(color: Colors.lime.shade800),
                      children: [
                        TextSpan(text: "Terms & Conditions",
                            style: TextStyle(fontSize: 12,
                                fontWeight: FontWeight.w500))
                      ],
                    )),
                    Text.rich(TextSpan(
                      style: TextStyle(color: Colors.black),
                      children: [
                        TextSpan(text: " and ",
                            style: TextStyle(fontSize: 12,
                                fontWeight: FontWeight.w500))
                      ],
                    )),
                    Text.rich(TextSpan(
                      style: TextStyle(color: Colors.lime.shade800),
                      children: [
                        TextSpan(text: "Privacy Policy.",
                            style: TextStyle(fontSize: 12,
                                fontWeight: FontWeight.w500))
                      ],
                    ))
                  ],
                )
            ),

          ],
        ),
      ),
    );
  }
}