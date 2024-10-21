import 'package:flutter/material.dart';

class MyTextField extends StatelessWidget {
  final String hintText;
  final bool isObscure;
  final TextEditingController controller;
  final IconButton? icon;
  const MyTextField({super.key,
    required this.hintText,
    required this.isObscure,
    required this.controller,
    this.icon
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      obscureText: isObscure,
      decoration: InputDecoration(
        // border: OutlineInputBorder(
        //   borderRadius: BorderRadius.circular(15)
        // ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30),
          borderSide: BorderSide(color: Theme.of(context).colorScheme.tertiary)
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30),
          borderSide: BorderSide(color: Theme.of(context).colorScheme.primary)
        ),
        contentPadding: const EdgeInsets.all(10),
        hintText: hintText,
        suffixIcon: icon
      ),
    );
  }
}

// class MyTextField extends StatefulWidget {
//   final TextEditingController controller;
//   bool obscureText;
//   final String hintText;
//   MyTextField({
//     super.key,
//     required this.controller,
//     required this.obscureText,
//     required this.hintText
//   });


//   @override
//   State<MyTextField> createState() => _MyTextFieldState();
// }

// class _MyTextFieldState extends State<MyTextField> {
//   @override
//   Widget build(BuildContext context) {
//     return TextFormField(
//       controller: widget.controller,
//       decoration: InputDecoration(
//         contentPadding: const EdgeInsets.all(10),
//         // label: Text(hintText),
//         hintText: widget.hintText,
//         enabledBorder: OutlineInputBorder(
//           borderRadius: BorderRadius.circular(30),
//           borderSide: BorderSide(color: Theme.of(context).colorScheme.tertiary)
//         ),
//         focusedBorder: OutlineInputBorder(
//           borderRadius: BorderRadius.circular(30),
//           borderSide: BorderSide(color: Theme.of(context).colorScheme.primary)
//         )
//       ),
//     );
//   }
// }