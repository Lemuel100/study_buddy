import 'package:flutter/material.dart';
import 'package:study_buddy/components/app_image__component.dart';
import 'package:study_buddy/components/custom_input_field__component.dart';
import 'package:study_buddy/screens/home__screen.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});
  static String routeName = '/login';
  final TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(top: 24, left: 24, right: 24),
          child: Column(
            children: [
              Expanded(
                  flex: 2,
                  child: Column(
                    children: [
                      const AppImage(
                        imageUrl: 'assets/imgs/splash_three.jpg',
                      ),
                      CustomFormField(
                          controller: _controller,
                          inputType: TextInputType.text,
                          inputAction: TextInputAction.next,
                          label: "Username",
                          hint: "your user name",
                          validate: (val) {}),
                      const SizedBox(
                        height: 8,
                      ),
                      CustomFormField(
                          controller: _controller,
                          inputType: TextInputType.text,
                          inputAction: TextInputAction.next,
                          label: "Password",
                          hint: "your password",
                          isObscured: true,
                          validate: (val) {}),
                      Row(
                        children: [
                          TextButton(
                              onPressed: () {}, child: Text("Create account")),
                          const Spacer(),
                          TextButton(
                              onPressed: () {},
                              child: Text(
                                "Forgot password",
                                style: Theme.of(context)
                                    .textTheme
                                    .subtitle2!
                                    .copyWith(color: Colors.redAccent),
                              )),
                        ],
                      )
                    ],
                  )),
              Expanded(
                  child: Column(
                children: [
                  const Spacer(),
                  _buildCustomButton(
                      context: context,
                      title: "Login",
                      start: Color.fromARGB(255, 136, 192, 238),
                      stop: Color.fromARGB(255, 4, 61, 108),
                      onPressed: () {
                        Navigator.pushReplacementNamed(
                            context, HomeScreen.routeName);
                      }),
                  const SizedBox(
                    height: 8,
                  ),
                  _buildCustomButton(
                      context: context,
                      title: "Visit school website",
                      start: Color.fromARGB(255, 4, 61, 108),
                      stop: Color.fromARGB(255, 4, 61, 108),
                      onPressed: () {}),
                  const Spacer()
                ],
              ))
            ],
          ),
        ),
      ),
    );
  }

  Container _buildCustomButton(
      {required BuildContext context,
      required String title,
      required Color start,
      required Color stop,
      required VoidCallback onPressed}) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [start, stop],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      child: TextButton(
        onPressed: onPressed,
        child: Text(
          title,
          style: Theme.of(context)
              .textTheme
              .headline6!
              .copyWith(color: Colors.white, fontSize: 16),
        ),
      ),
    );
  }
}
