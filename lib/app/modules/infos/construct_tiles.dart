import 'package:flutter/material.dart';

ListTile buildListTile(
    {required BuildContext context,
    required String title,
    required String subtitle,
    required Color? color}) {
  return ListTile(
    title: Padding(
      padding: const EdgeInsets.only(bottom: 8),
      child: Text(
        title,
        style: TextStyle(
          color: color,
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
      ),
    ),
    subtitle: Text(
      subtitle,
      style: const TextStyle(
        fontSize: 16,
      ),
    ),
  );
}

Widget buildExpansionTile(
    {required BuildContext context,
    required String title,
    required String subtitle,
    required Color? color}) {
  return ExpansionTile(
    title: Text(
      title,
      style: TextStyle(
        color: color,
        fontSize: 20,
        fontWeight: FontWeight.bold,
      ),
    ),
    children: [
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Text(
          subtitle,
          style: const TextStyle(fontSize: 16),
        ),
      ),
    ],
  );
}
