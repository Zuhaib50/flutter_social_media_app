// import 'package:flutter/material.dart';
// import 'package:flutter/widgets.dart';
// import 'package:flutter_social_media_app/screens/EditProfileScreen.dart';
// import 'package:flutter_social_media_app/widgets/common/BaseHeader.dart';

// class HeaderSection extends StatelessWidget {
//   const HeaderSection({
//     this.width,
//     this.height,
//     this.gkey,
//   });
//   final double width;
//   final double height;
//   final GlobalKey gkey;

//   @override
//   Widget build(BuildContext context) {
//     return Positioned(
//       top: 0,
//       child: Container(
//         padding: EdgeInsets.fromLTRB(15, 35, 15, 15),
//         height: 365,
//         width: MediaQuery.of(context).size.width,
//         decoration: BoxDecoration(color: Colors.white, boxShadow: [
//           BoxShadow(
//               color: Colors.grey.withOpacity(0.3),
//               blurRadius: 15,
//               offset: Offset(0, 5))
//         ]),
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//           children: <Widget>[
//             BaseHeader(
//               width: width,
//               height: height,
//             ),
//             SizedBox(
//               height: 10,
//             ),
//             Row(
//               children: [
//                 GetAvatar(),
//                 SizedBox(
//                   width: 20,
//                 ),
//                 Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     Text(
//                       'Kyle Smith',
//                       style: TextStyle(
//                           fontSize: 24,
//                           color: Color(0xFF1ab7ea),
//                           fontWeight: FontWeight.w500),
//                     ),
//                     Text('Fashion',
//                         style: TextStyle(
//                           fontSize: 14,
//                           color: Colors.grey,
//                         )),
//                     Text('Living my dreams!!',
//                         style: TextStyle(
//                             color: Colors.grey,
//                             fontWeight: FontWeight.bold,
//                             fontSize: 14)),
//                     Text('KyleS.123@gmail.com',
//                         style: TextStyle(
//                             color: Color(0xFF1ab7ea),
//                             fontWeight: FontWeight.bold,
//                             fontSize: 14)),
//                   ],
//                 ),
//               ],
//             ),
//             Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 Padding(
//                   padding: const EdgeInsets.all(8.0),
//                   child: Text('Interests',
//                       style:
//                           TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
//                 ),
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceAround,
//                   children: [
//                     Text('Music',
//                         style: TextStyle(
//                             color: Colors.orange,
//                             fontSize: 16,
//                             fontWeight: FontWeight.bold)),
//                     Text('Fashion',
//                         style: TextStyle(
//                             color: Colors.pink,
//                             fontSize: 16,
//                             fontWeight: FontWeight.bold)),
//                     Text('Science',
//                         style: TextStyle(
//                             color: Colors.deepPurpleAccent,
//                             fontSize: 16,
//                             fontWeight: FontWeight.bold)),
//                   ],
//                 ),
//               ],
//             ),
//             SizedBox(height: 10),
//             Divider(
//               color: Colors.black,
//             ),
//             getUserStats(),
//             Divider(
//               color: Colors.black,
//             )

//             // SizedBox(
//             //   height: 10,
//             // ),
//             // _getUserBtns(),
//           ],
//         ),
//       ),
//     );
//   }
// }

// getUserStats() {
//   return Row(
//     mainAxisAlignment: MainAxisAlignment.spaceBetween,
//     children: <Widget>[
//       Expanded(
//         child: Container(
//           decoration: BoxDecoration(
//               border:
//                   Border(right: BorderSide(color: Colors.grey, width: 0.5))),
//           child: Column(
//             children: <Widget>[
//               Text(
//                 '317',
//                 style: TextStyle(fontWeight: FontWeight.bold),
//               ),
//               Text('Posts', style: TextStyle(color: Colors.grey)),
//             ],
//           ),
//         ),
//       ),
//       Expanded(
//         child: Container(
//           decoration: BoxDecoration(
//               border:
//                   Border(right: BorderSide(color: Colors.grey, width: 0.5))),
//           child: Column(
//             children: <Widget>[
//               Text(
//                 '1.2M',
//                 style: TextStyle(fontWeight: FontWeight.bold),
//               ),
//               Text('Motivators', style: TextStyle(color: Colors.grey)),
//             ],
//           ),
//         ),
//       ),
//       Expanded(
//         child: Column(
//           children: <Widget>[
//             Text(
//               '478',
//               style: TextStyle(fontWeight: FontWeight.bold),
//             ),
//             Text('Motivets', style: TextStyle(color: Colors.grey)),
//           ],
//         ),
//       ),
//     ],
//   );
// }
