import 'package:flutter/material.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:muster_up/views/login_screen.dart';
import 'package:muster_up/views/onboarding/SignupPageViewController.dart';
import 'package:muster_up/views/signUpFlow/signUpScreen2.dart';

class signUp extends StatefulWidget {
  const signUp({super.key});

  @override
  State<signUp> createState() => _signUpState();
}

class _signUpState extends State<signUp> {
  String? SelectedGender;
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Color(0xFFF5F5F5),
      appBar: AppBar(
        backgroundColor: Color(0xFFF5F5F5),
        
        title: Row(
          children: [
             Expanded(
                 child: Text('Step 1 of 3',
                 textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 12, color: Colors.grey.shade500),
                               ),

               ),
            
            Expanded
            (flex: -10,
              child: const SignUpIndicator(
              currentIndex2: 0
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
            padding: EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Expanded(
                      child: TextFormField(
                      
                        decoration: InputDecoration(
                          hintText: 'First Name',
                          hintStyle: TextStyle(fontSize: 12),
                          filled: true,
                          isDense: true,
                          fillColor: Colors.white,
                          contentPadding: EdgeInsets.symmetric(vertical: 5, horizontal: 5),
                          border: OutlineInputBorder(
                          borderRadius: BorderRadius.zero,
                          borderSide: BorderSide.none
                          ),
                        ),
                          

                        validator: (value) {
                          if (value == null || value.isEmpty){
                            return 'Please Enter Your First Name';
                          }
                          return null;
                        },
                      
                      ),
                      ),
                    

                    SizedBox(width: 5,),
                    
            
                    Expanded(
                      child: TextFormField(
                        decoration: InputDecoration(
                          hintText: 'Last Name',
                          hintStyle: TextStyle(fontSize: 12),
                          filled: true,
                          isDense: true,
                          fillColor: Colors.white,
                          contentPadding: EdgeInsets.symmetric(vertical: 5, horizontal: 5),
                          border: OutlineInputBorder(
                          borderRadius: BorderRadius.zero,
                          borderSide: BorderSide.none
                          )
                          ),
                        validator: (value){
                          if (value == null || value.isEmpty){
                          return 'Please Enter a last Name';
                          }
                        }
                      
                      ),
                    )
                   ],
                   ),
                SizedBox(height: 10,),
                TextFormField(
                    
                        decoration: InputDecoration(
                          hintText: 'Email',
                          hintStyle: TextStyle(fontSize: 12),
                          filled: true,
                          isDense: true,
                          fillColor: Colors.white,
                          contentPadding: EdgeInsets.symmetric(vertical: 5, horizontal: 5),
                          border: OutlineInputBorder(
                          borderRadius: BorderRadius.zero,
                          borderSide: BorderSide.none
                          ),
                          ),
                        validator: (value) {
                          if (value == null || value.isEmpty){
                            return 'Please Enter a Valid email';
                          }
                          return null;
                        },
                      
                      ),
                      SizedBox(height: 10,),

                      TextFormField(
                      obscureText: true,
                      
                        decoration: InputDecoration(
                          hintText: 'Enter Password',
                           hintStyle: TextStyle(fontSize: 12),
                          filled: true,
                          isDense: true,
                          fillColor: Colors.white,
                          suffixIcon: Icon(Icons.visibility),
                          contentPadding: EdgeInsets.symmetric(vertical: 5, horizontal: 5),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.zero,
                          
                            borderSide: BorderSide.none
                          ),
                        ),
                          

                        validator: (value) {
                          if (value == null || value.isEmpty){
                            return 'Please enter a valid password';
                          }
                          return null;
                        },
                        
                      
                      ),
                      SizedBox(height: 10,),

                      TextFormField(
                      obscureText: true,
                        decoration: InputDecoration(
                          hintText: 'Confirm Password',
                           hintStyle: TextStyle(fontSize: 12),
                          filled: true,
                          isDense: true,
                          fillColor: Colors.white,
                          suffixIcon: Icon(Icons.visibility),
                          contentPadding: EdgeInsets.symmetric(vertical: 5, horizontal: 5),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.zero,
                            borderSide: BorderSide.none
                          ),
                        ),
                          

                        validator: (value) {
                          if (value == null || value.isEmpty){
                            return '';
                          }
                          return null;
                        },
                      
                      ),
                      SizedBox(height: 10,),
                      IntlPhoneField(
                      initialCountryCode: 'NG',
                      dropdownIconPosition: IconPosition.trailing, // Nigeria by default
                      onChanged: (phone) {
                     // print(phone.completeNumber);
                      },
                        decoration: InputDecoration(
                          hintText: 'Enter Your Phone Number',
                           hintStyle: TextStyle(fontSize: 12),
                          filled: true,
                          isDense: true,
                          fillColor: Colors.white,
                          contentPadding: EdgeInsets.symmetric(vertical: 5, horizontal: 5),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.zero,
                          
                            borderSide: BorderSide.none
                          ),
                        ),

                      ),
                      DropdownButtonFormField<String>(
                        value: SelectedGender,
                      decoration: InputDecoration(
                        hintText: 'Gender',
                        filled: true,
                        fillColor: Colors.white,
                        contentPadding: EdgeInsets.symmetric(vertical: 5, horizontal: 5),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.zero,
                          borderSide: BorderSide.none
                        )
                      ),
                        items: const [
                          DropdownMenuItem(
                            value:' male',
                            child: Text('Male', 
                            style: TextStyle(fontSize: 12, color: Color(0xFFFFFA500)),
                            ),
                            ),
                            DropdownMenuItem(
                              value: 'Female',
                              child: Text('Female',  
                              style: TextStyle(fontSize: 12, color: Color(0xFFFFFA500)),)
                              ),
                              DropdownMenuItem(
                                value: 'Prefer Not to say',
                                child: Text('Prefer Not to say', 
                                 style: TextStyle(fontSize: 12, color: Color(0xFFFFFA500)),)
                                ),
                              
                        ], 
                        
                        onChanged: (value) {
                          setState(() {
                            SelectedGender = value;
                          });
                        }
                        ),
                        
                      SizedBox(height: 30,),
                       FilledButton(onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context) => SignUp2()));
                        }, 
                        style: FilledButton.styleFrom(
                          backgroundColor: Color(0xFFFFFA500),
                          minimumSize: Size(400, 35),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5)
                          )
                        ),

                        child: Text('Continue',
                         style:TextStyle(color: Colors.black) ,),
                        ),
                        SizedBox(height: 15,),
                    
                    Row(
                      children: [
                        Expanded(
                           child: Divider(
                            thickness: 1,
                            color: Colors.grey,
                          ),
                        ),
                        const SizedBox(width: 5,),

                        
                           const Text('Or Register With',
                          style: TextStyle(color: Colors.grey, fontSize: 14),
                          ),
                          SizedBox(width: 5,),
                        

                        Expanded(
                          child: Divider(
                            thickness: 1,
                            color: Colors.grey,
                          ),
                        ),


                      ],
                    ),

                    SizedBox(height: 15,),

                    Row(
                    children: [
                      Expanded(
                        child: FilledButton(onPressed: (){},
                         style: FilledButton.styleFrom(
                          backgroundColor: Colors.white,
                          minimumSize: Size(300, 30),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),
                            side: BorderSide(
                              color: Colors.grey
                            )
                          )
                         ),
                         child:Row(
                          children: [
                            
                             Icon(Icons.apple, color: Colors.black,),
                            
                            const SizedBox(width: 5,),
                            const Text('Apple',
                             style: TextStyle(color: Colors.grey) ,)
                          ],
                         )
                         ),
                      ),
                      const SizedBox(width: 5,),

                       Expanded(
                         child: FilledButton(onPressed: (){},
                         style: FilledButton.styleFrom(
                          backgroundColor: Colors.white,
                          minimumSize: Size(300, 30),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),
                            
                            side: BorderSide(
                              color: Colors.grey
                            )
                          )
                         ),
                         child:Row(
                          children: [
                            Icon(Icons.apple,color: Colors.black,),
                            const SizedBox(width: 5,),
                         
                            const Text('Google',
                             style:TextStyle(color: Colors.grey) ,)
                          ],
                         )
                         ),
                       ),
                       
                    ],

                    ),
                    const SizedBox(height: 10,),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                         Text('Already have an account?'),
                        const SizedBox(width:1 ,),
                
                        TextButton(onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=> LogInScreen()
                          )
                          );
                        }, 
                        child: Text('Login',
                         style: TextStyle(color: Colors.orangeAccent,
                         decoration: TextDecoration.underline,
                         decorationColor: Color(0xFFFFFA500),
                         decorationThickness: 2)
                         ,))
                      ],
                
                    )
                      
              ],
            ),
          )
         )
       ],
      ),
    );
  }
}


