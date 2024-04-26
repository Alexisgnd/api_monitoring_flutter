import 'package:flutter/material.dart';

class HeaderApp extends StatelessWidget {
  final String interfaceName;

  const HeaderApp({super.key, required this.interfaceName});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      color: Colors.blue,
      child: Row(
        children: [
          const Icon(
            Icons.monitor,
            color: Colors.white,
          ),
          const SizedBox(width: 8),
          Text(
            interfaceName,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}