import 'package:flutter/material.dart';
import 'package:muster_up/views/OTPconfirmationScreen1.dart';
import 'package:muster_up/views/SentEmail.dart';


class Emailpageviewcontroller extends StatefulWidget {
  const Emailpageviewcontroller({super.key});

  @override
  State<Emailpageviewcontroller> createState() => _EmailpageviewcontrollerState();
}

class _EmailpageviewcontrollerState extends State<Emailpageviewcontroller> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 2), () {
      if (mounted) {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => const OTP()),
        );
      }
    });
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return const EmailSent();
  }
}
