import 'package:flutter/material.dart';

class RecentTransactionItem extends StatelessWidget {
  const RecentTransactionItem(
      {Key key, this.image, this.onTap, this.subtitle, this.title, this.value})
      : super(key: key);

  final String title;
  final String image;
  final String subtitle;
  final String value;
  final Function onTap;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          color: Colors.grey.withOpacity(0.03),
          borderRadius: BorderRadius.circular(5),
        ),
        padding: const EdgeInsets.all(10),
        margin: const EdgeInsets.only(bottom: 20),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CircleAvatar(
              backgroundColor: Colors.white,
              radius: 20,
              backgroundImage: NetworkImage(image),
            ),
            SizedBox(width: 15),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: TextStyle(fontWeight: FontWeight.w600),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  subtitle,
                  style: TextStyle(
                    fontWeight: FontWeight.w300,
                    color: Colors.grey,
                    fontSize: 13,
                  ),
                )
              ],
            ),
            Spacer(),
            Text(
              "${value ?? ""}",
              style: TextStyle(fontWeight: FontWeight.w600),
            )
          ],
        ),
      ),
    );
  }
}
