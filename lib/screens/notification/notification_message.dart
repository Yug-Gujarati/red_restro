import 'package:flutter/material.dart';

class NotificationMessage extends StatelessWidget {
  const NotificationMessage({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Row(
        children: [
          const CircleAvatar(
            radius: 20,
            backgroundImage: AssetImage("assets/images/profile.jpg"),
          ),
          const SizedBox(width: 16),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'vibhav bhai', // Replace with the actual name
                style: TextStyle(fontSize: 16, color: Colors.grey[800]),
              ),
              Text(
                'This is a sample message.', // Replace with the actual message
                style: TextStyle(fontSize: 16, color: Colors.grey[800]),
              ),
            ],
          ),
          const Spacer(),
          Text(
            '2 min', // Replace with the actual text
            style: TextStyle(fontSize: 16, color: Colors.grey[800]),
          ),
        ],
      ),
    );
  }
}
