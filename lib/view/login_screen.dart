import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

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

  Widget textHeader(Size size) {
    return Column(
      children: const [
        Text(
          "My-BPIBS",
          style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.w700,
          ),
        ),
        Text("Portal Wali Siswa"),
        SizedBox(
          height: 15,
        ),
        Text(
          "LOGIN",
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.w700,
          ),
        ),
      ],
    );
  }

  Widget logo(double height_, double width_) {
    return Image.asset(
      'assets/Logo.png',
      height: height_,
      width: width_,
    );
  }

  Widget emailTextField(Size size) {
    return Container(
      alignment: Alignment.center,
      height: size.height / 12,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(40.0),
        border: Border.all(
          color: const Color(0xFF757171),
          width: 1.0,
        ),
        color: const Color(0xFF69FCB5),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            const Icon(
              Icons.account_circle_outlined,
              color: Color(0xFF757171),
            ),
            const SizedBox(
              width: 16,
            ),
            Expanded(
              child: TextField(
                maxLines: 1,
                cursorColor: const Color.fromARGB(179, 0, 0, 0),
                keyboardType: TextInputType.emailAddress,
                style: GoogleFonts.inter(
                  fontSize: 14.0,
                  color: const Color.fromARGB(179, 0, 0, 0),
                  fontWeight: FontWeight.w500,
                ),
                decoration: InputDecoration(
                    hintText: 'username',
                    hintStyle: GoogleFonts.inter(
                      fontSize: 14.0,
                      color: const Color(0xFF757171),
                      fontWeight: FontWeight.w500,
                    ),
                    border: InputBorder.none),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget passwordTextField(Size size) {
    return Container(
      alignment: Alignment.center,
      height: size.height / 12,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(40.0),
        border: Border.all(
          color: const Color(0xFF757171),
          width: 1.0,
        ),
        color: const Color(0xFF69FCB5),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            const Icon(
              Icons.lock,
              color: Color(0xFF757171),
            ),
            const SizedBox(
              width: 16,
            ),
            Expanded(
              child: TextField(
                maxLines: 1,
                cursorColor: const Color.fromARGB(179, 0, 0, 0),
                keyboardType: TextInputType.visiblePassword,
                obscureText: true,
                style: GoogleFonts.inter(
                  fontSize: 14.0,
                  color: const Color.fromARGB(179, 0, 0, 0),
                  fontWeight: FontWeight.w500,
                ),
                decoration: InputDecoration(
                    hintText: 'enter Passwors',
                    hintStyle: GoogleFonts.inter(
                        fontSize: 14.0,
                        color: const Color(0xFF757171),
                        fontWeight: FontWeight.w500),
                    suffixIcon: const Icon(
                      Icons.visibility,
                      color: Color(0xFF757171),
                    ),
                    border: InputBorder.none),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildRemember(Size size) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        TextButton(
          onPressed: () {},
          child: const Text(
            "Forgot Password",
            style: TextStyle(
              color: Color(0xFFDA3340),
            ),
          ),
        ),
      ],
    );
  }

  Widget signInButton(Size size) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
            padding: const EdgeInsets.symmetric(vertical: 16),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            backgroundColor: const Color.fromARGB(255, 38, 128, 231),
            foregroundColor: Colors.white,
            textStyle: GoogleFonts.inter(
              fontSize: 16.0,
              fontWeight: FontWeight.w600,
            )),
        child: const Text('LOGIN'),
      ),
    );
  }
}
