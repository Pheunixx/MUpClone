import 'package:flutter/material.dart';
import 'package:muster_up/views/login_screen.dart';
import 'package:muster_up/views/onboarding/slide2.dart';
import 'package:muster_up/views/onboarding/SignupPageViewController.dart';
import 'package:muster_up/views/signUpFlow/signUpScreen1.dart';


class Slide1 extends StatefulWidget {
  const Slide1({super.key});

  @override
  State<Slide1> createState() => _Slide1State();
}

class _Slide1State extends State<Slide1> with TickerProviderStateMixin {
  late AnimationController _mapController;
  late AnimationController _bottomController;
  late Animation<Offset> _mapOffset;
  late Animation<Offset> _bottomOffset;

  @override
  void initState() {
    super.initState();

    _mapController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 1),
    );
    _bottomController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 1000),
    );

    _mapOffset = Tween<Offset>(
      begin: const Offset(0, 1), // start offscreen (bottom)
      end: Offset(0, 0.1),
    ).animate(CurvedAnimation(
      parent: _mapController,
      curve: Curves.easeOut,
    ));

    _bottomOffset = Tween<Offset>(
      begin: const Offset(0, 1),
      end: Offset.zero,
    ).animate(CurvedAnimation(
      parent: _bottomController,
      curve: Curves.easeOutBack,
    ));

    _mapController.forward(). then((_) {
      _bottomController.forward();
    });
    
  }

  @override
  void dispose() {
    _mapController.dispose();
    _bottomController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Expanded(
            flex: 6,
            child: SlideTransition(
              position: _mapOffset,
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Image.asset(
                    'assets/images/iMockup - iphone 14.png', // your map image with pins
                    width: size.width,
                    fit: BoxFit.contain,
                  ),
                  // Optional: animate pins separately here if you want
                ],
              ),
            ),
          ),
          Expanded(
            flex: 4,
            child: SlideTransition(
              position: _bottomOffset,
              child: Container(
                padding: const EdgeInsets.all(20),
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.vertical(top: Radius.circular(30)),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const  OnboardingIndicator(currentIndex: 0), 
                    const SizedBox(height: 20),
                    Center(
                      child: const Text(
                        "Explore Curated Events Aligned\n with Your Interests",
                        style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                      ),
                    ),
                    const SizedBox(height: 10),
                    Center(
                      child: const Text(
                        "From industry mixers and workshops to networking meetups and live experiences - Dicover events that\n fits your goals, location, and profesiional focus.",
                        style: TextStyle(fontSize: 12, color: Colors.grey),
                      ),
                    ),
                    const Spacer(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        ElevatedButton(onPressed: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context)=> signUp()
                          )
                          );
                        }, 
                        child: 
                        const Text("Skip"),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.white,
                          minimumSize: const Size(150,30),
                          shape: RoundedRectangleBorder(
                          borderRadius: BorderRadiusGeometry.circular(20))
                        ),
                        ),
                        SizedBox(width: 5,),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Color(0xFFFFA500),
                            minimumSize: Size(150, 30),
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                          ),
                          onPressed: () 
                          {
                            Navigator.push(context, MaterialPageRoute(builder: (context)=> Slide2()));
                          },
                          child: const Text("Continue"),
                        )
                      ],
                    ),
                    const SizedBox(height: 1),
                    Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Already have an account?'),
                      SizedBox(width:1 ,),

                      TextButton(onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (Context)=> LogInScreen()
                        )
                        );
                      }, 
                      child: Text('Login',
                       style: TextStyle(color: Colors.orangeAccent),))
                    ],
                  )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
