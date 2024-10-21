import 'package:flutter/material.dart';

import '../components/mu_button.dart';
import '../components/my_text_field.dart';

class RegisterPage extends StatefulWidget {
  final VoidCallback goToLogin;
  const RegisterPage({
    super.key,
    required this.goToLogin
  });

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _confirmPasswordController = TextEditingController();
  bool _visiblePassword = true;
  bool _visibleConfirmPassword = true;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.background,
        title: const Text('Login Page')
      ),

      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.lock_open, size: 80, color: Theme.of(context).colorScheme.inversePrimary,),
            const SizedBox(height: 20,),
            Text(
              "Welcome to V-Food",
              style: TextStyle(
                color: Theme.of(context).colorScheme.inversePrimary,
                fontWeight: FontWeight.w500,
                letterSpacing: 1, fontSize: 18
              )
            ),

            const SizedBox(height: 20,),
            MyTextField(
              controller: _emailController,
              isObscure: false,
              hintText: "Email",
            ),
            const SizedBox(height:20),
      
            MyTextField(
              controller: _passwordController,
              isObscure: _visiblePassword,
              hintText: "Password",
              icon: IconButton(
                onPressed: (){
                  setState(() {
                    _visiblePassword = !_visiblePassword;
                  });
                },
                icon: Icon(_visiblePassword ? Icons.visibility : Icons.visibility_off),
              ),
            ),
            const SizedBox(height:20),

            MyTextField(
              controller: _confirmPasswordController,
              isObscure: _visibleConfirmPassword,
              hintText: "Confirm Password",
              icon: IconButton(
                onPressed: (){
                  setState(() {
                    _visibleConfirmPassword = !_visibleConfirmPassword;
                  });
                },
                icon: Icon(_visibleConfirmPassword ? Icons.visibility : Icons.visibility_off),
              ),
            ),
            const SizedBox(height:20),
            

            MyButton(
              onPressed: (){},
              label: "Register"
            ),

            const SizedBox(height: 20,),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Already have an Account", style: TextStyle(color: Theme.of(context).colorScheme.primary, fontWeight: FontWeight.w500)),
                const SizedBox(width:10),
                GestureDetector(
                  onTap: widget.goToLogin,
                  child: Text("Login Now", style: TextStyle(color: Theme.of(context).colorScheme.inversePrimary, fontWeight: FontWeight.w500),))
              ]
            )
          ],
        ),
      ),

      // body: Center(
      //   child: TextButton(
      //     onPressed: widget.goToLogin,
      //     child: const Text('Go to register'),
      //   )
      // )
    );
  }
}