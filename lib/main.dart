import 'package:flutter/material.dart';
import 'package:flutter_login/view/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}

// class LoginScreen extends StatefulWidget {
//   const LoginScreen({super.key});

//   @override
//   State<LoginScreen> createState() => _LoginScreenState();
// }

// class _LoginScreenState extends State<LoginScreen> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       resizeToAvoidBottomInset: false,
//       backgroundColor: const Color(0xFF69FCB5),
//       body: SafeArea(
//           child: Padding(
//         padding: const EdgeInsets.symmetric(
//           horizontal: 40,
//         ),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.center,
//           children: [
//             Image.asset(
//               "assets/Logo.png",
//               height: 120,
//               width: 350,
//               fit: BoxFit.contain,
//             ),
//             const Text(
//               "My-BPIBS",
//               style: TextStyle(
//                 fontSize: 36,
//                 fontWeight: FontWeight.w700,
//               ),
//             ),
            // const Text("Portal Wali Siswa"),
            // const SizedBox(
            //   height: 20,
            // ),
            // const Text(
            //   "LOGIN",
            //   style: TextStyle(
            //     fontSize: 36,
            //     fontWeight: FontWeight.w700,
            //   ),
            // ),
//             const SizedBox(
//               height: 20,
//             ),
//             // Username Textfield
//             Container(
//               decoration: BoxDecoration(
//                 color: const Color(0xFFF1F1F1),
//                 borderRadius: BorderRadius.circular(8),
//               ),
//               child: Padding(
//                 padding: const EdgeInsets.symmetric(
//                   vertical: 8,
//                   horizontal: 15,
//                 ),
//                 child: TextFormField(
//                     decoration: const InputDecoration(
//                   border: InputBorder.none,
//                   hintText: 'Username',
//                 )),
//               ),
//             ),
//             const SizedBox(
//               height: 20,
//             ),
//             // Password Textfield
//             Container(
//               decoration: BoxDecoration(
//                 color: const Color(0xFFF1F1F1),
//                 borderRadius: BorderRadius.circular(8),
//               ),
//               child: Padding(
//                 padding: const EdgeInsets.symmetric(
//                   vertical: 8,
//                   horizontal: 15,
//                 ),
//                 child: TextFormField(
//                   decoration: const InputDecoration(
//                     border: InputBorder.none,
//                     hintText: 'Password',
//                   ),
//                 ),
//               ),
//             ),
//             // Forgot Password
//             Align(
//               alignment: Alignment.centerLeft,
//               child: InkWell(
//                 onTap: () {},
//                 child: const Text(
//                   "Forgot Password?",
//                   style: TextStyle(
//                     color: Color(0xFFDA3340),
//                   ),
//                 ),
//               ),
//             ),
//             // Login Button
//             Row(
//               children: [
//                 Expanded(
//                   child: MaterialButton(
//                     color: const Color(0xFFEC515D),
//                     shape: RoundedRectangleBorder(
//                       borderRadius: BorderRadius.circular(100),
//                     ),
//                     onPressed: () {},
//                     child: const Padding(
//                       padding: EdgeInsets.all(18.0),
//                       child: Text(
//                         "LOGIN",
//                         style: TextStyle(
//                             color: Colors.white,
//                             fontSize: 20,
//                             fontWeight: FontWeight.w600),
//                       ),
//                     ),
//                   ),
//                 ),
//               ],
//             ),
//             const Spacer(),
//             // Register Button
            // Row(
            //   mainAxisAlignment: MainAxisAlignment.center,
            //   children: [
            //     const Text("Don't have an account?"),
            //     TextButton(
            //         onPressed: () {},
            //         child: const Text(
            //           "Register",
            //           style: TextStyle(
            //             color: Color(0xFFDA3340),
            //           ),
            //         ),),
//               ],
//             ),
//           ],
//         ),
//       )),
//     );
//   }
// }
