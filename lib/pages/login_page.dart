import 'package:flutter/material.dart';

import '../components/mu_button.dart';
import '../components/my_text_field.dart';
import 'home_page.dart';

class LoginPage extends StatefulWidget {
  final VoidCallback goToRegister;
  const LoginPage({
    super.key,
    required this.goToRegister
  });

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  bool _visiblePassword = true;

  void _login(){
    Navigator.push(context, MaterialPageRoute(builder: (context)=> MyHomePage()));
  }

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

            MyButton(
              onPressed: _login,
              label: "Login"
            ),

            const SizedBox(height:20),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Don't have an Account ", style: TextStyle(color: Theme.of(context).colorScheme.primary, fontWeight: FontWeight.w500),),
                const SizedBox(width:10),
                GestureDetector(
                  onTap: widget.goToRegister,
                  child: Text("Register Now", style: TextStyle(color: Theme.of(context).colorScheme.inversePrimary, fontWeight: FontWeight.w500),))
              ]
            )
          ],
        ),
      ),

      // body: Center(
      //   child: TextButton(
      //     onPressed: widget.goToRegister,
      //     child: const Text('Go to register'),
      //   )
      // )
    );
  }
}