// import 'package:flutter/material.dart';

// class IntroScreen extends StatefulWidget {
//   const IntroScreen({Key? key}) : super(key: key);

//   @override
//   State<IntroScreen> createState() => _MyappState();
// }

// class _MyappState extends State<IntroScreen> {
//   @override
//   Widget build(BuildContext context) {
//     double width = MediaQuery.of(context).size.width;
//     double height = MediaQuery.of(context).size.height;
//     return Scaffold(
//       body: Container(
//         margin: const EdgeInsets.all(20.0),
//         height: height,
//         width: width,
//         child: SingleChildScrollView(
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               Container(
//                 width: width,
//                 height: height * 0.45,
//                 child: Image.asset(
//                   'yoga.png',
//                   fit: BoxFit.contain,
//                 ),
//               ),
//               Padding(
//                 padding: const EdgeInsets.all(10.0),
//                 child: Row(
//                   mainAxisAlignment: MainAxisAlignment.start,
//                   children: [
//                     Text(
//                       'Login',
//                       style: TextStyle(
//                           fontSize: 25.0, fontWeight: FontWeight.bold),
//                     ),
//                   ],
//                 ),
//               ),
//               SizedBox(
//                 height: 30.0,
//               ),
//               TextField(
//                 decoration: InputDecoration(
//                   hintText: 'Email',
//                   suffixIcon: Icon(Icons.email),
//                   border: OutlineInputBorder(
//                     borderRadius: BorderRadius.circular(20.0),
//                   ),
//                 ),
//               ),
//               SizedBox(
//                 height: 20.0,
//               ),
//               TextField(
//                 obscureText: true,
//                 decoration: InputDecoration(
//                   hintText: 'Password',
//                   suffixIcon: Icon(Icons.visibility_off),
//                   border: OutlineInputBorder(
//                     borderRadius: BorderRadius.circular(20.0),
//                   ),
//                 ),
//               ),
//               SizedBox(
//                 height: 30.0,
//               ),
//               Padding(
//                 padding: const EdgeInsets.all(10.0),
//                 child: Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                   children: [
//                     Text(
//                       'Forget password?',
//                       style: TextStyle(fontSize: 12.0),
//                     ),
//                     RaisedButton(
//                       child: Text('Login'),
//                       color: Color(0xffEE7B23),
//                       onPressed: () {},
//                     ),
//                   ],
//                 ),
//               ),
//               SizedBox(height: 20.0),
//               GestureDetector(
//                 onTap: () {
//                   Navigator.push(context,
//                       MaterialPageRoute(builder: (context) => Second()));
//                 },
//                 child: Text.rich(
//                   TextSpan(text: 'Don\'t have an account ', children: [
//                     TextSpan(
//                       text: 'Signup',
//                       style: TextStyle(color: Color(0xffEE7B23)),
//                     ),
//                   ]),
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

// class Second extends StatefulWidget {
//   @override
//   _SecondState createState() => _SecondState();
// }

// class _SecondState extends State<Second> {
//   @override
//   Widget build(BuildContext context) {
//     double width = MediaQuery.of(context).size.width;
//     double height = MediaQuery.of(context).size.height;
//     return Scaffold(
//       body: Container(
//         margin: const EdgeInsets.all(20.0),
//         height: height,
//         width: width,
//         child: SingleChildScrollView(
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               Container(
//                 width: width,
//                 height: height * 0.45,
//                 child: Image.asset(
//                   'play.png',
//                   fit: BoxFit.contain,
//                 ),
//               ),
//               Padding(
//                 padding: const EdgeInsets.all(8.0),
//                 child: Row(
//                   mainAxisAlignment: MainAxisAlignment.start,
//                   children: [
//                     Text(
//                       'Signup',
//                       style: TextStyle(
//                           fontSize: 25.0, fontWeight: FontWeight.bold),
//                     ),
//                   ],
//                 ),
//               ),
//               SizedBox(
//                 height: 30.0,
//               ),
//               TextField(
//                 decoration: InputDecoration(
//                   hintText: 'Email',
//                   suffixIcon: Icon(Icons.email),
//                   border: OutlineInputBorder(
//                     borderRadius: BorderRadius.circular(20.0),
//                   ),
//                 ),
//               ),
//               SizedBox(
//                 height: 20.0,
//               ),
//               TextField(
//                 obscureText: true,
//                 decoration: InputDecoration(
//                   hintText: 'Password',
//                   suffixIcon: Icon(Icons.visibility_off),
//                   border: OutlineInputBorder(
//                     borderRadius: BorderRadius.circular(20.0),
//                   ),
//                 ),
//               ),
//               SizedBox(
//                 height: 30.0,
//               ),
//               Padding(
//                 padding: const EdgeInsets.all(10.0),
//                 child: Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                   children: [
//                     Text(
//                       'Forget password?',
//                       style: TextStyle(fontSize: 12.0),
//                     ),
//                     RaisedButton(
//                       child: Text('Signup'),
//                       color: Color(0xffEE7B23),
//                       onPressed: () {},
//                     ),
//                   ],
//                 ),
//               ),
//               SizedBox(height: 20.0),
//               GestureDetector(
//                 onTap: () {
//                   Navigator.push(context,
//                       MaterialPageRoute(builder: (context) => IntroScreen()));
//                 },
//                 child: Text.rich(
//                   TextSpan(text: 'Already have an account ', children: [
//                     TextSpan(
//                       text: 'Signin',
//                       style: TextStyle(color: Color(0xffEE7B23)),
//                     ),
//                   ]),
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
