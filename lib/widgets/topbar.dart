import 'package:flutter/material.dart';

class Topbar extends StatelessWidget {
  const Topbar({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Dashboard",
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 20,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "Morning Celestino, Welcome to Fênix Dashboard",
                style: TextStyle(color: Colors.grey),
              )
            ],
          ),
          SizedBox(
            width: 300,
          ),
          Container(
              width: 300,
              height: 50,
              padding: const EdgeInsets.symmetric(horizontal: 10),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Row(
                children: [
                  Icon(
                    Icons.search_outlined,
                    color: Colors.grey,
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  SizedBox(
                    height: 50,
                    width: 200,
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: "Search here",
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                ],
              )),
          SizedBox(
            width: 15,
          ),
          Container(
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(10)),
            child: IconButton(
              icon: Icon(
                Icons.notifications_outlined,
                color: Colors.grey,
              ),
              onPressed: () {},
            ),
          ),
          SizedBox(
            width: 15,
          ),
          CircleAvatar(
              backgroundImage: NetworkImage(
                  "https://avatars.githubusercontent.com/u/56524150?v=4")),
        ],
      ),
    );
  }
}
