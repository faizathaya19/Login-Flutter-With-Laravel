import 'package:flutter/material.dart';
import 'package:flutter_login/presentation/widgets/login_form_widget.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: const Color(0xFF69FCB5),
      body: SingleChildScrollView(
        child: SizedBox(
          height: size.height,
          child: Stack(
            children: <Widget>[
              Positioned(
                top: 20.0,
                child: SizedBox(
                  width: size.width,
                  height: size.height,
                  child: Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: size.width * 0.06),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        // Logo
                        Expanded(
                          flex: 3,
                          child: Column(
                            children: [
                              logo(size.height / 4, size.height / 1),
                              const SizedBox(
                                height: 3,
                              ),
                            ],
                          ),
                        ),

                        Expanded(
                          flex: 2,
                          child: Column(
                            children: [
                              textHeader(size),
                              const SizedBox(
                                height: 1,
                              ),
                            ],
                          ),
                        ),

                        // Email and Password
                        Expanded(
                          flex: 3,
                          child: Column(
                            children: [
                              emailTextField(size),
                              const SizedBox(
                                height: 8,
                              ),
                              passwordTextField(size),
                              const SizedBox(
                                height: 8,
                              ),
                              buildRemember(size),
                            ],
                          ),
                        ),

                        //Login Button
                        Expanded(
                          flex: 2,
                          child: Column(
                            children: [
                              signInButton(size),
                              const SizedBox(
                                height: 16,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
