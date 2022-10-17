// import 'package:flutter/material.dart';
// import 'package:flutter_fitness/screen/session_screen.dart';
// import 'package:flutter_fitness/screen/weather_screen.dart';
// import '../screen/BMI_screen.dart';
// import '../screen/intro_screen.dart';

// class MenuDrawer extends StatelessWidget {
//   const MenuDrawer({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Drawer(
//       child: ListView(
//         children: buildMenuItem(context),
//       ),
//     );
//   }

//   List<Widget> buildMenuItem(BuildContext context) {
//     final List<String> menuTitles = [
//       'Home',
//       'BMI Calculator',
//       'Weather',
//       'Training'
//     ];

//     List<Widget> menuItem = [];
//     menuItem.add(DrawerHeader(
//         decoration: BoxDecoration(color: Colors.blueGrey),
//         child: Text('Global Fitness',
//             style: TextStyle(color: Colors.white, fontSize: 28))));
//     menuTitles.forEach((String element) {
//       Widget screen = Container();
//       menuItem.add(ListTile(
//           title: Text(element, style: TextStyle(fontSize: 18)),
//           onTap: () {
//             switch (element) {
//               case 'Home':
//                 screen = IntroScreen();
//                 break;
//               case 'BMI Calculator':
//                 screen = BmiScreen();
//                 break;
//               case 'Weather':
//                 screen = WeatherScreen();
//                 break;
//               case 'Training':
//                 screen = SessionScreen();
//                 break;
//             }
//             Navigator.of(context).pop();
//             Navigator.of(context)
//                 .push(MaterialPageRoute(builder: (context) => screen));
//           }));
//     });
//     return menuItem;
//   }
// }
