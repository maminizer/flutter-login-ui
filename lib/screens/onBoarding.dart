import 'package:flutter/material.dart';
import 'package:loginui/screens/Login.dart';
import 'package:loginui/utils/onBoardingImageClipper.dart';
import 'package:loginui/widgets/onBoardingButton.dart';


class onBoarding extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<onBoarding> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: <Widget>[
          ClipPath(
            clipper: OnBoardingImageClipper(),
                      child: Container(
              width: double.infinity,
              height: 500,
              child: Stack(
                children: <Widget>[
                  Positioned(
                    left: -370,
                    top: -340,
                    bottom: 0,
                    child : Image.asset(
                      "assets/images/img11.jpg",
                      fit: BoxFit.cover,
                      width: 820,
                      height: 1470,
                    )
                  ),
                  Positioned(
                    left: 0,
                    right: 0,
                    bottom: 0,
                    child: Container(
                      width: double.infinity,
                      height: 340,
                      /*decoration: BoxDecoration(
                        gradient: LinearGradient(
                          colors: [
                            Color(0xFFE2B0FF).withOpacity(.8),
                            Color(0xFF9F44D3).withOpacity(0.05),
                          ],
                          begin: Alignment.bottomCenter,
                          end:  Alignment.topCenter,
                        )
                      ), */
                    ),
                  ),
                  Positioned(
                    right: 40,
                    top : 60,
                    child: Text(
                      "NXT",
                      style : TextStyle(
                        fontSize : 50,
                        color : Colors.white,
                        fontFamily:"Poppins",
                        fontWeight : FontWeight.w900, 
                      ),
                    ),
                  ),
                  Positioned(
                    top:96,
                    right: 28,
                    child: Text(
                      "LVL",
                      style:TextStyle(
                        fontSize:50,
                        color:Colors.white,
                        fontFamily: "Poppins",
                        fontWeight: FontWeight.w900,
                      ),
                    )
                  ),
                  
                ],
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(left: 32.0),
                child: RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: "Mami",
                        style: TextStyle(
                          fontSize: 33,
                          color: Colors.black,
                          fontFamily: "CaviarDreams",
                          fontWeight: FontWeight.w900,
                        )
                      ),
                      TextSpan(
                        text: " Limited.",
                        style: TextStyle(
                          fontSize: 26,
                          color: Color(0xFF4A4A4A),
                          fontFamily: "CaviarDreams",
                          fontWeight: FontWeight.w300,
                        )
                      ),
                    ]
                  ),
                ),
              ),
              GestureDetector(
                onTap: (){
                  Navigator.of(context).push(
                    MaterialPageRoute(builder:(_)=>LoginPage())
                  );
                },
                child: OnBoardingButton()
              ),
            ],
          )
        ],
      )
    );
  }

  //onBoardingImageClipper() {}
}