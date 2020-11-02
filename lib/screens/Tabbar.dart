// import 'package:flutter/material.dart';
// import 'package:flutter_social_media_app/widgets/CustomTabBar.dart';

// class TabBarScreen extends StatelessWidget {
//   List _list = [];

//   @override
//   Widget build(BuildContext context) {
//     var _onTapped;
//     return Scaffold(
//       bottomNavigationBar: FABBottomAppBar(
//         centerItemText: 'เสา',
//         color: Colors.grey,
//         backgroundColor: Colors.white,
//         selectedColor: Colors.red,
//         notchedShape: CircularNotchedRectangle(),
//         onTabSelected: _onTapped,
//         items: [
//           FABBottomAppBarItem(iconData: Icons.home, text: 'หน้าแรก'),
//           FABBottomAppBarItem(iconData: Icons.search, text: 'ค้นหา'),
//           FABBottomAppBarItem(iconData: Icons.account_circle, text: 'โปรไฟล์'),
//           FABBottomAppBarItem(iconData: Icons.more_horiz, text: 'อื่นๆ'),
//         ],
//       ),
//       body: _list[_page],
//       floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
//       floatingActionButton: FloatingActionButton(
//         onPressed: () {},
//         child: Icon(Icons.add),
//         elevation: 2.0,
//       ),
//     );
//   }
// }
