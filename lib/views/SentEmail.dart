import 'package:flutter/material.dart';

class EmailSent extends StatelessWidget {
  const EmailSent({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Center(
          child: Icon(Icons.email,
          size: 30,
          color: Color(0xffffa500),),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Align(
              alignment: Alignment.centerLeft,
              child: const Text("Email Sent",
              style: TextStyle(
                fontSize: 16,
                color: Colors.black,
                fontWeight: FontWeight.w500
              ),
              ),
            ),
            const SizedBox(height: 3,),
            const Text("We sent an email to Jazyswarty65@gmail.com Follow the instructions to reset your account password.",
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w400,
              color: Color(0xff8A8A8A)
            ),)
          ],
        ),
      ),
    );
  }
}