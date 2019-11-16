import 'package:flutter/material.dart';

class LoginButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ClipPath(  
          clipper: OnBoardingButtonClipper(),
                    child: Container(
                  width: 120,
                  height: 120,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [
                        Color(0xFF82D2ED),
                        Color(0xFF3CA0CA),
                      ],
                      stops: [
                        0.4,
                        1.0,
                      ],
                    ),
                  ),
                  child: Center(
                    child: Padding(
                      padding: EdgeInsets.only(left: 45),
                      child: Icon(
                        Icons.arrow_forward_ios,
                        color: Colors.white,
                      ),
                    ),
                  )
                ),
              );
            }
          }
          
          class OnBoardingButtonClipper extends CustomClipper<Path> {

            @override
            Path getClip(Size size) {
              Path path = Path();
                path.moveTo(size.width , 0);
                path.lineTo(32, (size.height/2)-14);
                path.quadraticBezierTo(16,(size.height/2),32,(size.height/2)+14);
                path.lineTo(size.width,size.height);
              return path;
            }

            @override
            bool shouldReclip(CustomClipper<Path> oldClipper) => false;
          }

