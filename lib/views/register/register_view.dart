import 'package:feather_icons/feather_icons.dart';
import 'package:flutter/material.dart';
import 'package:fluttersmartpay/core/constants/colors.dart';
import 'package:fluttersmartpay/core/constants/image/image_constants.dart';
import 'package:fluttersmartpay/core/extension/context_extension.dart';
import 'package:fluttersmartpay/views/login/login_view.dart';
import 'package:fluttersmartpay/views/widgets/custom_button.dart';
import 'package:fluttersmartpay/views/widgets/custom_text_field.dart';

class RegisterView extends StatelessWidget {
  const RegisterView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Spacer(),
              Text.rich(
                TextSpan(
                  children: [
                    TextSpan(
                      text: 'Create a ',
                      style: TextStyle(
                        fontSize: 27,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    TextSpan(
                      text: 'Smartpay',
                      style: TextStyle(
                        fontSize: 27,
                        color: secondaryPrimaryColor,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
              Text(
                'account',
                style: TextStyle(
                  fontSize: 27,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: context.normalValue),
              CustomTextField(hintText: "Full name"),
              SizedBox(height: context.normalValue),
              CustomTextField(
                hintText: "Email address",
                keyboardType: TextInputType.emailAddress,
              ),
              SizedBox(height: context.normalValue),
              CustomTextField(
                hintText: "Password",
                keyboardType: TextInputType.visiblePassword,
                obscureText: true,
                suffixIcon: Icon(
                  FeatherIcons.eye,
                  color: primaryColor.withOpacity(0.7),
                ),
              ),
              SizedBox(height: context.normalValue),
              CustomButton(text: "Sign Up", onPressed: () {}),
              SizedBox(height: context.mediumValue),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Divider(
                      color: Colors.grey,
                    ),
                  ),
                  SizedBox(width: 10),
                  Text(
                    "OR",
                    style: TextStyle(
                      color: Colors.grey,
                      fontWeight: FontWeight.w600,
                      fontSize: 16,
                    ),
                  ),
                  SizedBox(width: 10),
                  Expanded(
                    child: Divider(
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
              SizedBox(height: context.mediumValue),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Container(
                      margin: EdgeInsets.only(right: 20),
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.grey.shade300,
                        ),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Image.asset(
                        ImageConstants.instance.google,
                        width: 40,
                        height: 40,
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      margin: EdgeInsets.only(left: 20),
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.grey.shade300,
                        ),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Image.asset(
                        ImageConstants.instance.apple,
                        width: 40,
                        height: 40,
                      ),
                    ),
                  ),
                ],
              ),
              Spacer(),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Already have an account?",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  SizedBox(width: 5),
                  GestureDetector(
                    onTap: () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(builder: (_) => LoginView()),
                      );
                    },
                    child: Text(
                      "Sign In",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: secondaryPrimaryColor,
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
