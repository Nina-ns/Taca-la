import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

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
        style: GoogleFonts.poppins(
          color: color,
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
      ),
    ),
    subtitle: Text(
      subtitle,
      style: GoogleFonts.roboto(
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
      style: GoogleFonts.poppins(
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
          style: Theme.of(context).textTheme.bodyLarge,
        ),
      ),
    ],
  );
}
