import 'package:dashboard/widgets/recenteTransaction.dart';
import 'package:flutter/material.dart';

class SalesCard extends StatelessWidget {
  const SalesCard({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: Colors.white),
      margin: const EdgeInsets.only(bottom: 10),
      height: 320,
      width: 400,
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Users",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                ),
              ),
              Text(
                "See all",
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.blue,
                  fontWeight: FontWeight.w600,
                ),
              )
            ],
          ),
          SizedBox(height: 24),
          RecentTransactionItem(
              onTap: () {},
              title: "Romavic dos Anjos",
              subtitle: "ID: 33455S4LA03",
              image: "https://www.w3schools.com/w3images/avatar2.png"),
          RecentTransactionItem(
              onTap: () {},
              title: "Celestino Lopes",
              subtitle: "ID: 73455S4LA03",
              image: "https://www.w3schools.com/howto/img_avatar.png"),
        ],
      ),
    );
  }
}
