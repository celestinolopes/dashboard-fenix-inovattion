import 'package:flutter/material.dart';

class DashboardCard extends StatelessWidget {
  const DashboardCard(
      {Key key,
      this.color,
      this.description,
      this.icon,
      this.title,
      this.value,
      this.variation,
      this.variationColor})
      : super(key: key);
  final Color color;
  final Color variationColor;
  final IconData icon;
  final String title;
  final String value;
  final String description;
  final String variation;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: Colors.white),
      margin: const EdgeInsets.only(right: 20),
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
      width: 300,
      height: 110,
      child: Row(
        children: [
          Container(
            height: 80,
            width: 80,
            decoration: BoxDecoration(
              color: color,
              borderRadius: BorderRadius.circular(5),
            ),
            padding: const EdgeInsets.all(10),
            child: Icon(
              icon,
              color: variationColor,
              size: 30,
            ),
          ),
          SizedBox(
            width: 10,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Text(
                    title,
                    style: TextStyle(
                      color: Colors.grey,
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Icon(
                    Icons.arrow_upward,
                    color: variationColor,
                    size: 15,
                  ),
                  Text(
                    variation,
                    style: TextStyle(
                      color: variationColor,
                      fontWeight: FontWeight.w600,
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 11,
              ),
              Text(
                "\$  $value",
                style: TextStyle(
                  fontSize: 23,
                  fontWeight: FontWeight.w600,
                ),
              ),
              SizedBox(
                height: 4,
              ),
              Text(
                description,
                style: TextStyle(
                  color: Colors.grey,
                  fontWeight: FontWeight.w300,
                  fontSize: 12,
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
