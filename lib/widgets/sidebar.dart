import 'package:dashboard/widgets/menuItem.dart';
import 'package:flutter/material.dart';

class Sidebar extends StatelessWidget {
  const Sidebar({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: Colors.white),
      width: 210,
      height: MediaQuery.of(context).size.height,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Row(
              children: [
                CircleAvatar(
                  backgroundColor: Color(0xFF138EFF),
                  child: Text(
                    "D",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                Text(
                  "Dodol",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Text(
              "MAIN MENU",
              style: TextStyle(
                color: Colors.grey,
                fontWeight: FontWeight.w300,
              ),
            ),
          ),
          SizedBox(
            height: 15,
          ),
          MenuItem(
            label: "Dashboard",
            icon: Icons.apps,
            isActive: true,
          ),
          MenuItem(
            label: "Reports",
            icon: Icons.bar_chart,
            isActive: false,
          ),
          MenuItem(
            label: "Shedule",
            icon: Icons.calendar_today,
            isActive: false,
          ),
          MenuItem(
            label: "Analitics",
            icon: Icons.timeline,
            isActive: false,
          ),
          MenuItem(
            label: "SpreadSheet",
            icon: Icons.assignment_outlined,
            isActive: false,
          ),
          MenuItem(
            label: "Customers",
            icon: Icons.people_outline,
            isActive: false,
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: Text(
              "Help",
              style: TextStyle(color: Colors.grey, fontSize: 14),
            ),
          ),
          MenuItem(
            label: "Message",
            icon: Icons.mail_outline,
            isActive: false,
          ),
          MenuItem(
            label: "Settings",
            icon: Icons.settings,
            isActive: false,
          ),
          MenuItem(
            label: "Support",
            icon: Icons.support,
            isActive: false,
          ),
        ],
      ),
    );
  }
}
