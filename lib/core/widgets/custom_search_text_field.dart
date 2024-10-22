import 'package:flutter/material.dart';

class CustomSearchTextField extends StatelessWidget {
  const CustomSearchTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      style: const TextStyle(color: Colors.white), // Text color for dark mode
      cursorColor: Colors.white, // Cursor color for dark mode
      decoration: InputDecoration(
        hintText: 'Search...',
        hintStyle: TextStyle(color: Colors.grey[400]), // Hint text color
        contentPadding: const EdgeInsets.symmetric(vertical: 15.0, horizontal: 20.0),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15.0), // Border radius
          borderSide: BorderSide.none, // No visible border
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15.0), // Border radius
          borderSide: BorderSide(color: Colors.grey[700]!), // Border color in dark mode
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15.0), // Border radius
          borderSide: const BorderSide(color: Colors.white), // Border color when focused
        ),
      ),
    );
  }
}
