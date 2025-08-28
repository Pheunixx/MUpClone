import 'package:flutter/material.dart';
import 'package:muster_up/views/OTPconfirmationScreen1.dart';
import 'package:muster_up/views/SentEmail.dart';
import 'package:muster_up/views/login_screen.dart';
import 'package:muster_up/views/signUpFlow/emailPageViewController.dart';

class ForgotPassword extends StatefulWidget {
  const ForgotPassword({super.key});

  @override
  State<ForgotPassword> createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
late TextEditingController _email = TextEditingController();
@override
  void initState() {
    _email = TextEditingController();
    super.initState();
  }
  @override
  void dispose() {
    _email.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Text("Forgot Password"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
             const Text("Enter E-mail you used in creationg the account, and we will send recovery steps",
             style: TextStyle(
              color: Color(0xff8A8A8A),
              fontWeight: FontWeight.w400,
              fontSize: 12
             ),
             ),
             const SizedBox(height: 3,),
             TextField(
              controller: _email,
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.white,
                hintText: "Email",
                //isDense: true,
                border: OutlineInputBorder(
                  borderSide: BorderSide.none
                )
              ),
             ),
        
             const SizedBox(height: 5,),
        
             Center(
               child: FilledButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=> Emailpageviewcontroller()
                )
                );
               }, 
               style: FilledButton.styleFrom(
                backgroundColor: Color(0xffffa500),
                minimumSize: Size(330, 38),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5)
                )
               ),
               child: const Text("Send Mail",
               style: TextStyle(
                color: Colors.black,
                fontSize: 14,
                fontWeight: FontWeight.w500
               ),
               )
               ),
             ),
             Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text("Remember Password?"),
                    TextButton(onPressed: (){
                      Navigator.push(context,  MaterialPageRoute(builder: (context)=> LogInScreen()
                      )
                      );
                    },
                      child: const Text("Login",
                      style: TextStyle(
                      color:Color(0xffffa500),
                      decoration: TextDecoration.underline,
                      decorationThickness: 2,
                      decorationColor: Color(0xffffa500) 
                      ),
                      )
                      )
                  ],
                ),
              )
          ]
         
        ),
      ),
    );
  }
}