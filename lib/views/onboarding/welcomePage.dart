import 'package:flutter/material.dart';
import 'package:muster_up/views/onboarding/slide1.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({super.key});

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<Offset> _logoOffset;
  late Animation<Offset> _musterTextOffset;
  late Animation<Offset> _taglineOffset;
  late Animation<Offset> _loginButtonOffset;
  late Animation<Offset> _signUpButtonOffset;
  late Animation<double> _musterTextOpacity;
  late Animation<double> _taglineOpacity;
  late Animation<Decoration> _bgColorAnimation;

  @override
  void initState() {
    super.initState();
   
    _controller =
        AnimationController(vsync: this, duration: const Duration(seconds: 6));

    _logoOffset = Tween<Offset>(
      begin: const Offset(0, 6),
      end: Offset.zero,
    ).animate(CurvedAnimation(
      parent: _controller,
      curve: const Interval(0.0, 0.2, curve: Curves.easeOut),
    ));

    _musterTextOffset = Tween<Offset>(
      begin: const Offset(0, 25),
      end: Offset.zero,
    ).animate(CurvedAnimation(
      parent: _controller,
      curve: const Interval(0.2, 0.35, curve: Curves.easeOut),
    ));

    _musterTextOpacity = Tween<double>(
      begin: 0,
      end: 1,
    ).animate(CurvedAnimation(
      parent: _controller,
      curve: const Interval(0.2, 0.4),
    ));

    _taglineOffset = Tween<Offset>(
      begin: const Offset(0, 35),
      end: Offset.zero,
    ).animate(CurvedAnimation(
      parent: _controller,
      curve: const Interval(0.35, 0.5, curve: Curves.easeOut),
    ));

    _taglineOpacity = Tween<double>(
      begin: 0,
      end: 1,
    ).animate(CurvedAnimation(
      parent: _controller,
      curve: const Interval(0.35, 0.55),
    ));

    _loginButtonOffset = Tween<Offset>(
      begin: const Offset(0, 7),
      end: Offset.zero,
    ).animate(CurvedAnimation(
      parent: _controller,
      curve: const Interval(0.55, 0.75, curve: Curves.easeOut),
    ));

    _signUpButtonOffset = Tween<Offset>(
      begin: const Offset(0, 5),
      end: Offset.zero,
    ).animate(CurvedAnimation(
      parent: _controller,
      curve: const Interval(0.55, 0.75, curve: Curves.easeOut),
    ));

    _bgColorAnimation = DecorationTween(
      begin: const BoxDecoration(
        gradient: LinearGradient(
          colors: [Color(0xFFFFA500), Color(0xFFFFEBB2)],
          begin: Alignment.topRight,
          end: Alignment.topLeft,
        ),
      ),
      end: const BoxDecoration(
        color: Colors.white,
      ),
    ).animate(CurvedAnimation(
      parent: _controller,
      curve: const Interval(0.5, 0.85, curve: Curves.easeInOut),
    ));

    _controller.forward();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
Widget build(BuildContext context) {
  return AnimatedBuilder(
    animation: _controller,
    builder: (context, child) {
      return Scaffold(
        body: Container(
          width: double.infinity,
          decoration: _bgColorAnimation.value,
          child: Stack(
            children: [
              // Centered content (logo + texts)
              Align(
                alignment: const Alignment(0, -0.2), // slightly above center
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    SlideTransition(
                      position: _logoOffset,
                      child: Image.asset(
                        'assets/images/logo.png',
                        width: 200,
                        height: 100,
                      ),
                    ),
                    const SizedBox(height: 20),
                    SlideTransition(
                      position: _musterTextOffset,
                      child: FadeTransition(
                        opacity: _musterTextOpacity,
                        child: const Text(
                          'MUSTER UP',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,fontFamily: 'inter',
                            fontSize: 22,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 10),
                    SlideTransition(
                      position: _taglineOffset,
                      child: FadeTransition(
                        opacity: _taglineOpacity,
                        child: const Text(
                          'The Event Networking App That Moves You.',
                          textAlign: TextAlign.center,
                          style: TextStyle(fontSize: 14),
                        ),
                      ),
                    ),
                  ],
                ),
              ),

             
              Positioned(
                bottom: 60,
                left: 0,
                right: 0,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    SlideTransition(
                      position: _loginButtonOffset,
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.orange,
                          minimumSize: const Size(320, 45),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                        ),
                        child: const Text('Login'),
                      ),
                    ),
                    const SizedBox(height: 10),
                    SlideTransition(
                      position: _signUpButtonOffset,
                      child: OutlinedButton(
                        onPressed: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => Slide1()));
                        },
                        style: OutlinedButton.styleFrom(
                          minimumSize: const Size(320, 45),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                        ),
                        child: const Text('Sign Up'),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        
        ),

        
      );
    },
  );
}

  }

