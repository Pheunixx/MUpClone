import 'package:flutter/material.dart';
import 'package:muster_up/views/login_screen.dart';
import 'package:muster_up/views/signUpFlow/signUpScreen1.dart';
import 'SignupPageViewController.dart';

class Slide3 extends StatefulWidget {
  const Slide3({super.key});

  @override
  State<Slide3> createState() => _Slide3State();
}

class _Slide3State extends State<Slide3> with TickerProviderStateMixin {
  late AnimationController _screenImageController;
  late AnimationController _bottomController;
  late Animation<Offset> _screenImageOffset;
  late Animation<Offset> _bottomOffset;

  @override
  void initState() {
    super.initState();
    _screenImageController = AnimationController(vsync: this, duration: Duration(milliseconds: 1000));
    _screenImageOffset = Tween<Offset>(begin: Offset(0, 1),
    end: Offset(0, 0.1)).animate(CurvedAnimation(parent: _screenImageController, curve: Curves.easeOut)
 );
 _bottomController = AnimationController(vsync: this, duration: Duration(milliseconds: 1000)
 );
 _bottomOffset = Tween<Offset>(begin: Offset(0, 1),
 end: Offset(0, 0.1)).animate(CurvedAnimation(parent: _bottomController, curve: Curves.easeOut));

 _screenImageController.forward().then((_){
  _bottomController.forward();
 });
  }

  @override
  void dispose() {
    super.dispose();
    _screenImageController.dispose();
    _bottomController.dispose();
  }
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Expanded(
            flex: 4,
            child: SlideTransition(
              position: _screenImageOffset,
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Image.asset('assets/images/iMockup - iphone 16.png',
                  width: size.width,
                  fit: BoxFit.contain,
                  height: size.height,
                  )
                ],
              ),),
              
              
          ),
          Expanded(
            flex: 4,
            child: SlideTransition(position: _bottomOffset,
            child: Container(

               padding: const EdgeInsets.all(20),
              width: size.width,
              decoration: BoxDecoration(
                color: Colors.white
              ),
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                     const  OnboardingIndicator(currentIndex: 2), 
                
                    SizedBox(
                      child: Center(
                        child: Text('Engage Through Challenges. Earn Rewards.',
                        textAlign: TextAlign.center,
                         style: TextStyle(
                          fontSize: 18, fontWeight: FontWeight.bold
                        ),
                        ),
                      ),
                    ),
                    Center(child: Text('Complete interactive tasks during events. Climb\n the leaderboard and unlock prizes designed to \nreward active participation and meaningful engagement',
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.grey, fontSize: 12),
                    
                  )
                  ),
                  SizedBox(height: 15,),
                
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        ElevatedButton(onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=> signUp()
                          )
                          );
                        },
                        style: ElevatedButton.styleFrom(
                          minimumSize: Size(150, 35),
                          backgroundColor: Colors.white,
                          side: BorderSide(
                            color: Colors.grey
                          ),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30))
                        )
                        , child: Text('Skip',
                         style: TextStyle(color: Colors.black)
                         )
                         ),

                        ElevatedButton(onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=> signUp()));  
                        }, 
                        style: ElevatedButton.styleFrom(
                          minimumSize: Size(150, 35),
                          backgroundColor: Color(0xFFFFFA500),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30),
                          )
                        ),
                        child: const Text('Get Started',
                         style: TextStyle(color: Colors.black))
                        )
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                         Text('Already have an account?'),
                        const SizedBox(width:1,),
                        TextButton(onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=> LogInScreen()
                          )
                          );
                        }, 
                        child: const Text('Login',
                         style: TextStyle(
                          color: Colors.orangeAccent),))
                      ],
                
                    )
                  ],
                
                  
                
                ),
              ),
            ),)
          )
        ],
        
      ),
    );
  
  }
}