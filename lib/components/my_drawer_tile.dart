import 'package:flutter/material.dart';

class MyDrawerTile extends StatelessWidget {
  final String label;
  final Icon icon;
  final Function()? onTap;
  const MyDrawerTile({
    super.key,
    required this.label,
    required this.icon,
    required this.onTap
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: const EdgeInsets.only(left: 20),
      leading: icon,
      title: Text(label),
      onTap: onTap,
    );
  }
}