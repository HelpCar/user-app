import 'package:flutter/material.dart';
import 'package:helpcar/src/constants/colors.dart';
import 'package:helpcar/src/widgets/custom_app_bar.dart';

class MyVehicleScreen01 extends StatefulWidget {
  const MyVehicleScreen01({super.key});

  @override
  State<MyVehicleScreen01> createState() => _MyVehicleScreen01State();
}

class _MyVehicleScreen01State extends State<MyVehicleScreen01> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 10,
      width: 300,
      padding: const EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        color: Colors.grey,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 1,
            blurRadius: 5,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Image.asset(
            'lib/assets/images/Coin.png',
            width: 60.0,
            height: 60.0,
            fit: BoxFit.cover,
          ),
          const SizedBox(width: 16.0),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  'Title',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18.0,
                  ),
                ),
                const SizedBox(height: 8.0),
                Text(
                  'Address',
                  style: TextStyle(
                    fontSize: 16.0,
                  ),
                ),
                const SizedBox(height: 8.0),
                Row(
                  children: <Widget>[
                    Icon(
                      Icons.star,
                      color: Colors.amber,
                      size: 18.0,
                    ),
                    const SizedBox(width: 8.0),
                    Text(
                      '4.5',
                      style: TextStyle(
                        fontSize: 16.0,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Icon(
            Icons.arrow_forward_ios,
            color: Colors.grey[400],
          ),
        ],
      ),
    );
  }
}
