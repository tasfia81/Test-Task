import 'package:flutter/material.dart';
import 'package:test_task/widget/custom_back_button.dart';

class ResetPassword extends StatefulWidget {
  const ResetPassword({super.key});

  @override
  State<ResetPassword> createState() => _ResetPasswordState();
}

class _ResetPasswordState extends State<ResetPassword> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          CustomBackButton(
            iconColor: Colors.black,
          ),
        ],
      ),
    );
  }
}
