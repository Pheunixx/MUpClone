import 'package:flutter/material.dart';

class newPassword extends StatefulWidget {
  const newPassword({super.key});

  @override
  State<newPassword> createState() => _newPasswordState();
}

class _newPasswordState extends State<newPassword> {
  final _formKey = GlobalKey<FormState>();
  late TextEditingController _passWord = TextEditingController();
  late TextEditingController _confirmpassWord = TextEditingController();

  @override
  void initState() {
  _passWord = TextEditingController();
  _confirmpassWord = TextEditingController();
    super.initState();
  }
  @override
  void dispose() {
    _passWord.dispose();
    _confirmpassWord.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Text('Create New Password',
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
            const Text("Your new password must be different from any of your previous passwords ",
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
                    controller: _passWord,
                    decoration: InputDecoration(
                      hintText: 'Enter Password',
                      hintStyle: TextStyle(
                        color: Color(0xff8A8A8A),
                        fontSize: 12,
                        fontWeight: FontWeight.w500
                      ),
                      filled: true,
                      fillColor: Colors.white,
                      isDense: true,
                      suffixIcon: Icon(Icons.visibility),
                      border: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.circular(10)
                      )
                    ),
                  ),
                  const SizedBox(height: 10,),
                  TextFormField(
                    controller: _confirmpassWord,
                    decoration: InputDecoration(
                      hintText: 'Confirm Password',
                      hintStyle: TextStyle(
                        fontSize: 12,
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
                  child: Text("Reset Password",
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    color: Colors.black,
                    fontSize: 14
                  ),)
                  ),
               ),
          ],
        ),
      ),
    );
  }
}
