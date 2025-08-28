import 'package:flutter/material.dart';
import 'package:muster_up/views/onboarding/SignupPageViewController.dart';
import 'package:muster_up/views/signUpFlow/signUpScreen3.dart';

class SignUp2 extends StatefulWidget {
  const SignUp2({super.key});

  @override
  State<SignUp2> createState() => _SignUp2State();
}

class _SignUp2State extends State<SignUp2> {
  bool _isChecked = false;
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF5F5F5),
      appBar: AppBar(
        backgroundColor: Color(0xFFF5F5F5),
        
        title: Row(
          children: [
             Expanded(
                 child: Text('Step 2 of 3',
                 textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 12, color: Colors.grey.shade500),
                               ),
               ),
               Expanded(
                flex: -10,
                child: const SignUpIndicator(
                  currentIndex2: 1
                  )
                  )
          ],
            
      ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
       children: [
         Padding(
           padding: const EdgeInsets.only(left: 16.0),
           child: const Text('Add Your Information',
            style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black87), ),
         ),

         Form(
          key: _formKey,
          child: SingleChildScrollView(
            
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: [
                  TextFormField(
                        decoration: InputDecoration(
                          hintText: 'Name Of Company',
                           hintStyle: TextStyle(fontSize: 12),
                          filled: true,
                          isDense: true,
                          fillColor: Colors.white,
                          contentPadding: EdgeInsets.symmetric(vertical: 5, horizontal: 5),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.zero,
                            borderSide: BorderSide.none
                  )
                        )
                        ),

                        SizedBox(height: 10,),

                        TextFormField(
                        decoration: InputDecoration(
                          hintText: 'Job Title',
                          hintStyle: TextStyle(fontSize: 12),
                          filled: true,
                          isDense: true,
                          fillColor: Colors.white,
                          contentPadding: EdgeInsets.symmetric(vertical: 5, horizontal: 5),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.zero,
                            borderSide: BorderSide.none
                  )
                        )
                        ),

                        SizedBox(height: 10,),

                        TextFormField(
                        decoration: InputDecoration(
                          
                          hintText: 'Location',
                          prefixIcon: Icon((Icons.location_pin),),
                           hintStyle: TextStyle(fontSize: 12),
                          filled: true,
                          isDense: true,
                          fillColor: Colors.white,
                          contentPadding: EdgeInsets.symmetric(vertical: 5, horizontal: 5),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.zero,
                            borderSide: BorderSide.none
                  )
                        )
                        ),

                        const SizedBox(height: 10,),

                        Row(
                        
                          children: [
                           Checkbox(value: _isChecked, 
                           activeColor: Colors.black,
                           checkColor: Color(0xFFFFFA500),
                           onChanged:  (bool? newValue){
                            setState(() {
                              _isChecked = newValue!;
                            });
                          
                           }),

                           Expanded(
                             child: Row(
                              children: [
                                const Text('By signing up, you agree to our',
                                style: TextStyle(fontSize: 10),),
                             SizedBox(width: 0,),
                                TextButton(onPressed: (){}, 
                                child: const Text('Terms & Conditions',
                                style: TextStyle(
                                  fontSize: 12,
                                  decoration: TextDecoration.underline,
                                  decorationColor: Color(0xFFFFFA500,)
                                ),
                                )
                                )
                              ]
                              
                             ),
                           )
                          ],
                        ), 
                        SizedBox(height: 20,),
                        FilledButton(onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context) => SignUp3()
                          )
                          );
                        }, 
                        style: FilledButton.styleFrom(
                          backgroundColor: Color(0xFFFFFA500),
                          minimumSize: Size(400, 35),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5)
                          )
                        ),

                        child: const Text('Continue',
                         style:TextStyle(color: Colors.black) ,),
                        ),

                ],
              ),
            )))
       ]
      ),
    );
  }
}