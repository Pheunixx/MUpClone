import 'package:flutter/material.dart';
import 'package:muster_up/views/forgotPasswordScreen.dart';
import 'package:muster_up/views/signUpFlow/signUpScreen1.dart';

class LogInScreen extends StatefulWidget {
  const LogInScreen({super.key});

  @override
  State<LogInScreen> createState() => _LogInScreenState();
}

class _LogInScreenState extends State<LogInScreen> {
  final _formKey = GlobalKey<FormState>();
  late TextEditingController _email = TextEditingController();
  late TextEditingController _passWord = TextEditingController();

  @override
  void initState() {
  _email = TextEditingController();
  _passWord = TextEditingController();
    super.initState();
  }
  @override
  void dispose() {
    _email.dispose();
    _passWord.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const  Text('Welcome Back',
        style: TextStyle(
          fontWeight: FontWeight.w500,

        ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text("Sign in with your Email Address and Password",
            style: TextStyle(
              color: Color(0xff8A8A8A),
              fontWeight: FontWeight.w400,
            ),
            ),
            const SizedBox(height: 5,),
            Form(
              key: _formKey,
              child: Column(
                children: [
                  TextFormField(
                    controller: _email,
                    decoration: InputDecoration(
                      hintText: 'Email',
                      hintStyle: TextStyle(
                        color: Color(0xff8A8A8A),
                        fontWeight: FontWeight.w500
                      ),
                      filled: true,
                      fillColor: Colors.white,
                      isDense: true,
                      border: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.circular(10)
                      )
                    ),
                  ),
                  const SizedBox(height: 10,),
                  TextFormField(
                    controller: _passWord,
                    decoration: InputDecoration(
                      hintText: 'Enter Your Password',
                      hintStyle: TextStyle(
                        color: Color(0xff8A8A8A),
                        fontWeight: FontWeight.w500
                        ) ,
                      filled: true,
                      fillColor: Colors.white,
                      isDense: true,
                      border: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.circular(10)
                      ),
                      suffixIcon: Icon(Icons.visibility)
                    ),
                  )
                ],
              )
              ),
              const SizedBox(height:5,),
              TextButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=> ForgotPassword()
                )
                );
              },
        
               child: Align(
                alignment: Alignment.centerRight,
                 child: const Text("Forgot Password?",
                 textAlign: TextAlign.right,
                 style: TextStyle(
                  fontSize: 12,
                  color: Color(0xffffA500),
                  fontWeight: FontWeight.w500,
                  decoration: TextDecoration.underline,
                  decorationColor: Color(0xffffA500)
                 ),),
               )
               ),
               const SizedBox(height: 3,),
        
               Center(
                 child: FilledButton(onPressed: (){
                 },
                 style: FilledButton.styleFrom(
                 // padding: EdgeInsets.fromLTRB(40, 8, 8, 40),
                  backgroundColor: Color(0xffffa500),
                  minimumSize: Size(330, 38),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5)
                  )
                 ),
                  child: Text("Login",
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    color: Colors.black,
                    fontSize: 14
                  ),)
                  ),
               ),
               const SizedBox(height: 10,),
                Center(
                  child: Row(
                    children: [
                      Expanded(child: Divider(
                        thickness: 1,
                      )
                      ),
                      const SizedBox(width: 5,),
                      const Text('Or Login with',
                      style: TextStyle(
                        color: Color(0xff8A8A8A),
                        fontSize: 12
                      ),
                      ),
                      const SizedBox(width: 5,),
                      Expanded(child: Divider(
                        thickness: 1,
                      ))
                    ],
                  )
                ),
                SizedBox(height: 15,),
                Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                    FilledButton(onPressed: (){},
                      style: FilledButton.styleFrom(
                      backgroundColor: Colors.white,
                      minimumSize: Size(169, 31),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(2),
                        side: BorderSide(
                          color: Colors.grey
                        )
                      )
                      ),
                      child:Row(
                      children: [
                          Icon(Icons.apple, color: Colors.black,),
                        SizedBox(width: 5,),
                        const Text('Apple',
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 12) ,
                          )
                      ],
                      )
                      ),
                  
                  SizedBox(width: 5,),
                      FilledButton(onPressed: ()
                      {},
                      style: FilledButton.styleFrom(
                      backgroundColor: Colors.white,
                      minimumSize: Size(169, 31),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(2),
                        side: BorderSide(
                        color: Colors.grey
                        )
                      )
                      ),
                      child:Row(
                      children: [
                        Icon(Icons.apple,color: Colors.black,),
                        SizedBox(width: 5,),
                        const Text('Google',
                        style:TextStyle(
                         color: Colors.grey,
                         fontSize: 12),
                         )
                      ],
                      )
                      ),
                     
                ],
                ),
                 const SizedBox(height: 1,),
                    Center(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text("Don't Have an account?"),
                            TextButton(onPressed: (){
                              Navigator.push(context, MaterialPageRoute(builder: (context)=>signUp()
                              )
                              );
                            },
                             child: const Text("Sign Up",
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
          ],
        ),
      ),
    );
  }
}