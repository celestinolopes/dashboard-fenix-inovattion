import 'package:flutter/material.dart';

class MenuItem extends StatelessWidget {
  const MenuItem(
      {Key key, this.isActive, @required this.icon, @required this.label})
      : super(key: key);
  final String label;
  final IconData icon;
  final bool isActive;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 10),
        decoration: BoxDecoration(
          color: isActive == true ? Colors.blue.withOpacity(0.1) : Colors.white,
        ),
        child: Padding(
          padding: const EdgeInsets.only(left: 20, top: 5, bottom: 5),
          child: Row(
            children: [
              Icon(
                icon,
                color: isActive ? Color(0xFF138EFF) : Colors.grey[400],
              ),
              SizedBox(width: 10),
              Text(
                label,
                style: TextStyle(
                  color: isActive ? Color(0xFF138EFF) : Colors.grey[400],
                  fontWeight: isActive ? FontWeight.w600 : FontWeight.w300,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
