import 'package:dashboard/widgets/recenteTransaction.dart';
import 'package:flutter/material.dart';

class RecentTransactionsCard extends StatelessWidget {
  const RecentTransactionsCard({
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
                "Recent Transactions",
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
            title: "Camera Cannon",
            subtitle: "24 January 2021",
            image:
                "https://i1.adis.ws/i/canon/eos-90d-2x_216756774490075?w=550&qlt=100&fmt=jpg&fmt.options=interlaced&bg=rgb(236,237,237)",
            value: "\$152.99",
          ),
          RecentTransactionItem(
            onTap: () {},
            title: "HeadPhones",
            subtitle: "23 January 2021",
            image:
                "https://www.sony.pt/image/f47c20e0a6ef17768bb58eb1a8c2ed5f?fmt=pjpeg&wid=1200&hei=470&bgcolor=F1F5F9&bgc=F1F5F9",
            value: "\$28.99",
          ),
          RecentTransactionItem(
            onTap: () {},
            title: "MakeUp",
            subtitle: "24 January 2021",
            image:
                "https://media.self.com/photos/57e00e471db118765d302bdd/4:3/w_768,c_limit/sub-channel-beauty_makeup.jpg",
            value: "\$44.99",
          ),
        ],
      ),
    );
  }
}
