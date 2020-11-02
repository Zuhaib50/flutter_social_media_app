import 'package:flutter/material.dart';
import '../main.dart';

class CustomNavItem extends StatelessWidget {
  final IconData icon;
  final int id;
  final Function setPage;
  final String title;

  const CustomNavItem({this.setPage, this.icon, this.title, this.id});

  @override
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        currentIndex = id;
        setPage();
      },
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          CircleAvatar(
            radius: 15,
            backgroundColor: Colors.transparent,
            child: Icon(
              icon,
              color: currentIndex == id
                  ? Colors.black
                  : Colors.white.withOpacity(0.9),
            ),
          ),
          Text(
            title,
            style: TextStyle(
              fontSize: 10,
              color: currentIndex == id
                  ? Colors.black
                  : Colors.white.withOpacity(0.9),
            ),
          )
        ],
      ),
    );
  }
}
