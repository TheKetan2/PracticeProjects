import 'package:fireside_chat_app/screens/login_screen.dart';
import 'package:fireside_chat_app/screens/registration_screen.dart';
import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:fireside_chat_app/widgets/padding_button.dart';

class WelcomeScreen extends StatefulWidget {
  static String id = "welcome_screen";

  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController controller;
  late Animation animation;
  double opacity = 0;
  @override
  void initState() {
    // TODO: implement initState

    super.initState();
    controller = AnimationController(
      duration: Duration(seconds: 1),
      vsync: this,
    );

    animation = CurvedAnimation(
      parent: controller,
      curve: Curves.decelerate,
    );

    controller.forward();
    controller.addListener(() {
      print(animation.value);
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red.withOpacity(animation.value),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Row(
              children: <Widget>[
                Hero(
                  tag: "logo",
                  child: Container(
                    child: Image.asset('images/logo.png'),
                    height: 60,
                  ),
                ),
                DefaultTextStyle(
                  style: const TextStyle(
                    fontSize: 45.0,
                    fontWeight: FontWeight.w900,
                  ),
                  child: AnimatedTextKit(
                    animatedTexts: [
                      TypewriterAnimatedText('Flash Chat'),
                    ],
                    onTap: () {
                      print("Tap Event");
                    },
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 48.0,
            ),
            PaddingButton(
              onPressed: () {
                //Go to registration screen.
                Navigator.pushNamed(context, LoginScreen.id);
              },
              text: "Log In",
              color: Colors.lightBlueAccent,
            ),
            PaddingButton(
              onPressed: () {
                //Go to registration screen.
                Navigator.pushNamed(context, RegistrationScreen.id);
              },
              text: "Register",
              color: Colors.blue,
            ),
          ],
        ),
      ),
    );
  }
}
