import 'package:flutter/material.dart';
import 'package:loginui/utils/loginImageClipper.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:loginui/widgets/loginButton.dart';


class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Stack(
              children: <Widget>[
                ClipPath(
                  clipper:LoginImageClipper() ,

                                  child: Container(
                    width: double.infinity,
                    height: 400,
                    child: Stack(
                      children: <Widget>[
                        Positioned(
                            
                            child: Image.asset(
                            "assets/images/img55.jpg",
                            fit: BoxFit.cover,
                            width: 820,
                            height: 1470,

                          ),
                        ),
                        Positioned(
                          left: 40,
                          top: 50,
                          child: Text("NXT",
                            style : TextStyle(
                              fontSize : 50,
                              color : Colors.white,
                              fontFamily:"Poppins",
                              fontWeight : FontWeight.w900, 
                            ),
                          ),

                        ),
                        Positioned(
                          left: 62,
                          top: 90,
                          child: Text("LVL",
                            style : TextStyle(
                              fontSize : 50,
                              color : Colors.white,
                              fontFamily:"Poppins",
                              fontWeight : FontWeight.w900, 
                            ),
                          ),

                        ),
                        Positioned(
                          left: 40,
                          top: 152,
                          child: RichText(
                            text: TextSpan(
                              children:[
                                TextSpan(
                                  text: "Mami",
                                  style: TextStyle(
                                    fontSize: 18,
                                    color: Colors.white,
                                    fontFamily: "Poppins",
                                    fontWeight: FontWeight.w900,
                                  ),
                                ),
                                TextSpan(
                                  text: " Limited.",
                                  style: TextStyle(
                                    fontSize: 18,
                                    color: Colors.white,
                                    fontFamily: "CaviarDreams",
                                    fontWeight: FontWeight.w900,
                                  )
                                )
                              ]
                              ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Positioned(
                  right: 30,
                  bottom: 30,
                  child: Text(
                    "LOGIN",
                    style: TextStyle(
                      fontSize: 40,
                      color: Color(0xFFCBCBCB),
                      fontFamily: "Poppins",
                      fontWeight: FontWeight.w900,
                      
                    ),
                  )
                  
                )
              ],
            ),
            
            buildUserName(),
            SizedBox(height: 20,),
            buildPassword(),
            SizedBox(height: 0,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(left: 30.0),
                  child: FlatButton(
                    child: Text(
                      "SignUp",
                      style: TextStyle(
                        fontSize: 22,
                        color: Colors.black38,
                        fontFamily: "CaviarDreams",
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                    onPressed: (){
                      
                    },
                  ),
                ),
                LoginButton(),
              ],
            )
          ],
        ),
      ),
    );
  }
  
  Widget buildUserName(){
    return Container(
      width: double.infinity,
      height: 50,
      margin: EdgeInsets.symmetric(horizontal: 30),
      decoration: BoxDecoration(
        color: Color(0xFFE7E7E7),
        borderRadius: BorderRadius.circular(40),
        boxShadow: [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 4,
            offset: Offset(0,4),

          ),
        ]
      ),
      child: Padding(
        padding: EdgeInsets.only(top: 4 , left: 24 , right: 16),
        child: TextField(
          decoration: InputDecoration(
            hintText: "Username",
            hintStyle: TextStyle(
              fontSize: 16,
              fontFamily: "CaviarDreams",
            ),
            enabledBorder: InputBorder.none,
            suffixIcon: Icon(
              Icons.person,
              )
          )
          ),
      ),
    );
  
  }

  Widget buildPassword(){
    return Container(
      width: double.infinity,
      height: 50,
      margin: EdgeInsets.symmetric(horizontal: 30),
      decoration: BoxDecoration(
        color: Color(0xFFE7E7E7),
        borderRadius: BorderRadius.circular(40),
        boxShadow: [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 4,
            offset: Offset(0,4),

          ),
        ]
      ),
      child: Padding(
        padding: EdgeInsets.only(top: 4 , left: 24 , right: 16),
        child: TextFormField(
          obscureText: true,
          decoration: InputDecoration(
            hintText: "Password",
            hintStyle: TextStyle(
              fontSize: 16,
              fontFamily: "CaviarDreams",
            ),
            enabledBorder: InputBorder.none,
            suffixIcon: Icon(
              FontAwesomeIcons.eye,
              )
          )
          ),
      ),
    );
  
  }  
  
}