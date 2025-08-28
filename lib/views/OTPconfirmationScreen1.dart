import 'dart:async';

import 'package:flutter/material.dart';
import 'package:muster_up/views/SentEmail.dart';
import 'package:muster_up/views/forgotPasswordScreen.dart';
import 'package:muster_up/views/newPassword.dart';
import 'package:pinput/pinput.dart';

class OTP extends StatefulWidget {
  const OTP({super.key});

  @override
  State<OTP> createState() => _OTPState();
}

class _OTPState extends State<OTP> {
  int countdown = 60;
  Timer? _timer;
  String otpCode = "";
@override
  void initState() {
    super.initState();
    startCountdown();
  }
  void startCountdown (){
    _timer = Timer.periodic(const Duration(seconds: 1), (timer){
      if (countdown >0){
        setState(() {
          countdown--;
        });
      }
      else {
        timer.cancel();
      }
    }
    );
  }
  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    bool isotpComplete = otpCode.length ==6;
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Text("Check Your Email",
        style: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w500,
          color: Colors.black
        ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Text("Enter verification code sent to Jazyswarty65@gmail.com",
            style: TextStyle(
              color: Color(0xfff8A8A8A),
              fontSize: 12,
            ),
            ),
           const SizedBox(height: 30,),
                Center(
                  child: Pinput(
                    length: 6,
                    showCursor: true,
                    obscureText: false,
                    defaultPinTheme: PinTheme(
                      width: 48,
                      height: 44,
                      textStyle: const TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w500
                      ),
                      decoration: BoxDecoration(
                        border: Border.all(color: Color(0xffBCBCBC)),
                        borderRadius: BorderRadius.circular(8)
                      ),
                    ),
                    separatorBuilder: (index) {
                      return  index == 2 ? const SizedBox(width: 30,):  const SizedBox(width:  10);
                    },
                  
                    onChanged: (value){
                      setState(() {
                        otpCode = value;
                      });
                    },
                    onCompleted: (pin) {
                      setState(() {
                        otpCode = pin;
                      });
                    },
                    
                  ),
                ),
             Text(
              countdown > 0 ?"Resend in 0:$countdown "
              : "",
              style: TextStyle(
                color: Color(0xffFF3D3D)
              ),
             ),

             FilledButton(onPressed: (){
              if(isotpComplete){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>newPassword()
                )
                );
              }

             },
             style: FilledButton.styleFrom(
              backgroundColor: isotpComplete? Color(0xffffa500)
              : Color(0xfffEBC581),
              minimumSize: Size(350, 38),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(4)
              )
             ),
             child:  Text(
              "Continue",
             style: TextStyle(
              color: isotpComplete? Colors.black
             : Color(0xff8A8A8A),
             fontSize: 14,
             fontWeight: FontWeight.w500
             ),
             )
             ),

             const SizedBox(height: 3,),
             
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "Did not receive an email?",
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  TextButton(onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => EmailSent()
                    )
                    );
                  },
                  style: TextButton.styleFrom(
                    padding: EdgeInsets.zero
                  ),
                   child: const Text("Resend",
                   style: TextStyle(
                    color: Color(0xffffa500),
                    decoration: TextDecoration.underline,
                    decorationColor: Color(0xffffa500),
                    decorationThickness: 2
                   ),
                   )
                   )
                ],
             ),
             //const SizedBox(height: ,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "Wrong Email Address?",
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w500
                    ),
                  ),
                  TextButton(onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=> ForgotPassword()
                    )
                    );
                  },
                  style: TextButton.styleFrom(
                    padding: EdgeInsets.all(3)
                  ),
                   child: const Text("Change Email Address",
                   style: TextStyle(
                    color: Color(0xffffa500),
                    decoration: TextDecoration.underline,
                    decorationColor: Color(0xffffa500),
                    decorationThickness: 2
                   ),
                   )
                   )
                ],
             )
            
          ],
        ),
      ),
    );
  }
}