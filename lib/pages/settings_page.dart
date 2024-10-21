import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../theming/theme_provider.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({super.key});

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.primary,
        title: const Text("Settings Page")
      ),

      body: Column(
        children: [
          Card(
            margin: const EdgeInsets.only(left: 15, right: 15, top: 15),
            child: ListTile(
              // contentPadding: const EdgeInsets.symmetric(horizontal: 20),
              title: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text("Dark Mode"),
                  Switch(
                    value: Provider.of<ThemeProvider>(context).isDarkMode,
                    onChanged: (value)=> Provider.of<ThemeProvider>(context, listen: false).toggleTheme()
                  )
                ],
              )
            ),
          )
        ]
      )
    );
  }
}