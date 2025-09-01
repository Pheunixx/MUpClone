import 'package:flutter/material.dart';
import 'package:muster_up/views/login_screen.dart';
import 'package:muster_up/views/onboarding/slide3.dart';
import 'package:muster_up/views/onboarding/SignupPageViewController.dart';
import 'package:muster_up/views/signUpFlow/signUpScreen1.dart';

class Slide2 extends StatefulWidget {
  const Slide2({super.key});

  @override
  State<Slide2> createState() => _Slide2State();
}

class _Slide2State extends State<Slide2> with TickerProviderStateMixin {
  late AnimationController _imagecontroller;
  late AnimationController _bottomController;
  late Animation<Offset> _imageOffset;
  late Animation<Offset> _bottomOffset;

  @override
  void initState() {
    super.initState();
    _imagecontroller = AnimationController(vsync: this, duration: Duration(seconds: 2)
     );

     _imageOffset = Tween<Offset>(begin: Offset(0, 1),
     end: Offset(0, 0.1)).animate(CurvedAnimation(parent: _imagecontroller, curve: Curves.easeOut)
     );
     _bottomController = AnimationController(vsync: this, duration: Duration(milliseconds: 1000));

     _bottomOffset = Tween<Offset>(begin: Offset(0, 1),
     end: Offset(0, 0.1)).animate(CurvedAnimation(parent: _bottomController, curve: 
     Curves.easeOut));
     _imagecontroller.forward().then((_){_bottomController.forward();

     });
  }

  @override
  void dispose() {
    super.dispose();
    _bottomController.dispose();
    _imagecontroller.dispose();
  }
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            flex: 4,
            child: SlideTransition(position: _imageOffset,
            
            child: Stack(
              alignment: Alignment.center,
              children: [
                 Image.asset('assets/images/illustration2b.png',
                 width: size.width,
                 height: size.height,
                 fit: BoxFit.contain,),
                 

              ],
            )
           
            )
          ),

          Expanded(
            flex: 4,
            child: SlideTransition(position: _bottomOffset,
            child: Container(
              padding: const EdgeInsets.all(20),
              width: size.width,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.vertical(top: Radius.circular(30))
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                 const  OnboardingIndicator(currentIndex: 1), 
                  SizedBox(
                    child: Center(
                      child: Text('Build Meaningful Connections',
                       style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold, ),),

                    ),
                    
                  
                  ),
                  Center(
                    child: Center(child: Text('Share connection links, grow your network, and meet like-minded people at every event. Premium members can personalize requests with direct messages',
                    textAlign: TextAlign.center, style: TextStyle(fontSize: 14, color: Colors.grey) ,)),
                  ),

                  SizedBox(height: 20,),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ElevatedButton(onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=> signUp()
                          )
                          );
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white,
                        minimumSize: Size(150, 35),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                          side: BorderSide(color: Colors.grey)
                        )
                      ),
                       child: Text('Skip' ,
                        style: TextStyle(color: Colors.black),)
                       ),
                       //SizedBox(width: 1,),

                       ElevatedButton(onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=> Slide3()));
                       }, 
                       style: ElevatedButton.styleFrom(
                        backgroundColor: Color(0xFFFFFA500),
                        minimumSize: Size(150, 35),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20)
                        )
                       ),
                       child: Text('Continue',
                        style: TextStyle(color: Colors.black),
                       )
                       )
                    ],
                  ),
                 SizedBox(height: 1,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Already have an account?'),
                      SizedBox(width:1 ,),

                      TextButton(onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>LogInScreen()
                        )
                        );
                      }, 
                      child: Text('Login',
                       style: TextStyle(color: Colors.orangeAccent),))
                    ],
                  )

                ],
                
              ),
            ),)
          )
        ],
      ),
    );
    
  }
}