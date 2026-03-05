import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LogIn extends StatefulWidget {
  final bool isFirstTimeUser;

  const LogIn({super.key, required this.isFirstTimeUser});

  @override
  LogInState createState() => LogInState();
}

class LogInState extends State<LogIn> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  Future<void> _handleLogin() async {
    String email = _emailController.text;
    String password = _passwordController.text;

    if (email.isEmpty || password.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Please fill in all fields')),
      );
      return;
    }

    // Check first-time user status
    if (widget.isFirstTimeUser) {
      final prefs = await SharedPreferences.getInstance();
      await prefs.setBool('isFirstTimeUser', false);
      if (mounted) {
        Navigator.pushReplacementNamed(context, '/gallery-access');
      }
    } else {
      if (mounted) {
        Navigator.pushReplacementNamed(context, '/home');
      }
    }
  }

  void _navigateToSignUp() {
    Navigator.pushNamed(context, '/signup');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          constraints: const BoxConstraints.expand(),
          color: const Color(0xFFFFFFFF),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: IntrinsicHeight(
                  child: Container(
                    color: const Color(0xFF4C6D5A),
                    width: double.infinity,
                    height: double.infinity,
                    child: SingleChildScrollView(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          IntrinsicHeight(
                            child: Container(
                              padding: const EdgeInsets.only(top: 100),
                              width: double.infinity,
                              child: Column(
                                children: [
                                  // Logo
                                  Container(
                                    margin: const EdgeInsets.only(bottom: 24),
                                    width: 73,
                                    height: 79,
                                    child: Image.network(
                                      "https://storage.googleapis.com/tagjs-prod.appspot.com/v1/QrSetwG1mZ/r7gd577t_expires_30_days.png",
                                      fit: BoxFit.fill,
                                    ),
                                  ),
                                  // Title
                                  IntrinsicWidth(
                                    child: IntrinsicHeight(
                                      child: Container(
                                        padding: const EdgeInsets.only(bottom: 1),
                                        margin: const EdgeInsets.only(bottom: 24),
                                        child: const Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              "RISE & BREW",
                                              style: TextStyle(
                                                color: Color(0xFFFFFFFF),
                                                fontSize: 27,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                  // White card
                                  IntrinsicHeight(
                                    child: Container(
                                      decoration: BoxDecoration(
                                        border: Border.all(
                                          color: const Color(0xFFE4E4E7),
                                          width: 1,
                                        ),
                                        borderRadius: BorderRadius.circular(16),
                                        color: const Color(0xFFFFFFFF),
                                        boxShadow: const [
                                          BoxShadow(
                                            color: Color(0x0D1A1A1A),
                                            blurRadius: 2,
                                            offset: Offset(0, 1),
                                          ),
                                        ],
                                      ),
                                      margin: const EdgeInsets.only(bottom: 48, left: 46, right: 46),
                                      width: double.infinity,
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          // Welcome back header
                                          IntrinsicHeight(
                                            child: Container(
                                              padding: const EdgeInsets.symmetric(vertical: 24),
                                              width: double.infinity,
                                              child: Column(
                                                children: [
                                                  Container(
                                                    margin: const EdgeInsets.only(bottom: 6),
                                                    child: const Text(
                                                      "Welcome back",
                                                      style: TextStyle(
                                                        color: Color(0xFF09090B),
                                                        fontSize: 24,
                                                        fontWeight: FontWeight.bold,
                                                      ),
                                                    ),
                                                  ),
                                                  const Text(
                                                    "Log in with your google Account",
                                                    style: TextStyle(
                                                      color: Color(0xFF70707A),
                                                      fontSize: 14,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                          // Login options
                                          IntrinsicHeight(
                                            child: Container(
                                              padding: const EdgeInsets.only(bottom: 24),
                                              width: double.infinity,
                                              child: Column(
                                                children: [
                                                  // Google login button
                                                  InkWell(
                                                    onTap: () {
                                                      // You can add Google sign-in logic here
                                                      print('Google login pressed');
                                                    },
                                                    child: IntrinsicHeight(
                                                      child: Container(
                                                        decoration: BoxDecoration(
                                                          border: Border.all(
                                                            color: const Color(0xFFE6E6E6),
                                                            width: 1,
                                                          ),
                                                          borderRadius: BorderRadius.circular(8),
                                                          color: const Color(0xFFFFFFFF),
                                                          boxShadow: const [
                                                            BoxShadow(
                                                              color: Color(0x0D1A1A1A),
                                                              blurRadius: 2,
                                                              offset: Offset(0, 1),
                                                            ),
                                                          ],
                                                        ),
                                                        padding: const EdgeInsets.symmetric(vertical: 8),
                                                        margin: const EdgeInsets.only(bottom: 16, left: 24, right: 24),
                                                        width: double.infinity,
                                                        child: Row(
                                                          mainAxisAlignment: MainAxisAlignment.center,
                                                          children: [
                                                            Container(
                                                              decoration: BoxDecoration(
                                                                borderRadius: BorderRadius.circular(8),
                                                              ),
                                                              margin: const EdgeInsets.only(right: 8),
                                                              width: 16,
                                                              height: 16,
                                                              child: ClipRRect(
                                                                borderRadius: BorderRadius.circular(8),
                                                                child: Image.network(
                                                                  "https://storage.googleapis.com/tagjs-prod.appspot.com/v1/QrSetwG1mZ/o1syf7g6_expires_30_days.png",
                                                                  fit: BoxFit.fill,
                                                                ),
                                                              ),
                                                            ),
                                                            const Text(
                                                              "Login with Google",
                                                              style: TextStyle(
                                                                color: Color(0xFF09090B),
                                                                fontSize: 14,
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                  // Or continue with divider
                                                  IntrinsicWidth(
                                                    child: IntrinsicHeight(
                                                      child: Container(
                                                        margin: const EdgeInsets.only(bottom: 16, left: 24, right: 24),
                                                        width: double.infinity,
                                                        child: Row(
                                                          children: [
                                                            IntrinsicWidth(
                                                              child: IntrinsicHeight(
                                                                child: Container(
                                                                  margin: const EdgeInsets.only(right: 10),
                                                                  child: Column(
                                                                    crossAxisAlignment: CrossAxisAlignment.start,
                                                                    children: const [
                                                                      SizedBox(
                                                                        width: 73,
                                                                        height: 1,
                                                                      ),
                                                                      SizedBox(
                                                                        width: 73,
                                                                        height: 1,
                                                                        child: ColoredBox(
                                                                          color: Color(0xFFE4E4E7),
                                                                        ),
                                                                      ),
                                                                    ],
                                                                  ),
                                                                ),
                                                              ),
                                                            ),
                                                            Container(
                                                              margin: const EdgeInsets.only(right: 12),
                                                              child: const Text(
                                                                "Or continue with",
                                                                style: TextStyle(
                                                                  color: Color(0xFF70707A),
                                                                  fontSize: 14,
                                                                ),
                                                              ),
                                                            ),
                                                            IntrinsicWidth(
                                                              child: IntrinsicHeight(
                                                                child: Column(
                                                                  crossAxisAlignment: CrossAxisAlignment.start,
                                                                  children: const [
                                                                    SizedBox(
                                                                      width: 73,
                                                                      height: 1,
                                                                    ),
                                                                    SizedBox(
                                                                      width: 73,
                                                                      height: 1,
                                                                      child: ColoredBox(
                                                                        color: Color(0xFFE4E4E7),
                                                                      ),
                                                                    ),
                                                                  ],
                                                                ),
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                  // Email and password fields
                                                  IntrinsicHeight(
                                                    child: Container(
                                                      margin: const EdgeInsets.only(bottom: 16, left: 24, right: 24),
                                                      width: double.infinity,
                                                      child: Column(
                                                        crossAxisAlignment: CrossAxisAlignment.start,
                                                        children: [
                                                          // Email field
                                                          IntrinsicHeight(
                                                            child: Container(
                                                              margin: const EdgeInsets.only(bottom: 16),
                                                              width: double.infinity,
                                                              child: Column(
                                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                                children: [
                                                                  IntrinsicHeight(
                                                                    child: Container(
                                                                      padding: const EdgeInsets.only(bottom: 1),
                                                                      margin: const EdgeInsets.only(bottom: 8),
                                                                      width: double.infinity,
                                                                      child: const Column(
                                                                        crossAxisAlignment: CrossAxisAlignment.start,
                                                                        children: [
                                                                          Text(
                                                                            "Email",
                                                                            style: TextStyle(
                                                                              color: Color(0xFF09090B),
                                                                              fontSize: 14,
                                                                            ),
                                                                          ),
                                                                        ],
                                                                      ),
                                                                    ),
                                                                  ),
                                                                  IntrinsicHeight(
                                                                    child: Container(
                                                                      alignment: Alignment.center,
                                                                      decoration: BoxDecoration(
                                                                        border: Border.all(
                                                                          color: const Color(0xFFE6E6E6),
                                                                          width: 1,
                                                                        ),
                                                                        borderRadius: BorderRadius.circular(8),
                                                                        color: const Color(0xFFFFFFFF),
                                                                        boxShadow: const [
                                                                          BoxShadow(
                                                                            color: Color(0x0D1A1A1A),
                                                                            blurRadius: 2,
                                                                            offset: Offset(0, 1),
                                                                          ),
                                                                        ],
                                                                      ),
                                                                      width: double.infinity,
                                                                      child: TextField(
                                                                        controller: _emailController,
                                                                        style: const TextStyle(
                                                                          color: Color(0xFF70707A),
                                                                          fontSize: 14,
                                                                        ),
                                                                        decoration: const InputDecoration(
                                                                          hintText: "m@example.com",
                                                                          isDense: true,
                                                                          contentPadding: EdgeInsets.only(top: 8, bottom: 8, left: 12, right: 12),
                                                                          border: InputBorder.none,
                                                                          focusedBorder: InputBorder.none,
                                                                          filled: false,
                                                                        ),
                                                                      ),
                                                                    ),
                                                                  ),
                                                                ],
                                                              ),
                                                            ),
                                                          ),
                                                          // Password field
                                                          IntrinsicHeight(
                                                            child: Container(
                                                              width: double.infinity,
                                                              child: Column(
                                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                                children: [
                                                                  IntrinsicHeight(
                                                                    child: Container(
                                                                      margin: const EdgeInsets.only(bottom: 8),
                                                                      width: double.infinity,
                                                                      child: Row(
                                                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                                        children: const [
                                                                          Text(
                                                                            "Password",
                                                                            style: TextStyle(
                                                                              color: Color(0xFF09090B),
                                                                              fontSize: 14,
                                                                            ),
                                                                          ),
                                                                          Text(
                                                                            "Forgot your password?",
                                                                            style: TextStyle(
                                                                              color: Color(0xFF09090B),
                                                                              fontSize: 14,
                                                                            ),
                                                                          ),
                                                                        ],
                                                                      ),
                                                                    ),
                                                                  ),
                                                                  Container(
                                                                    decoration: BoxDecoration(
                                                                      border: Border.all(
                                                                        color: const Color(0xFFE6E6E6),
                                                                        width: 1,
                                                                      ),
                                                                      borderRadius: BorderRadius.circular(8),
                                                                      color: const Color(0xFFFFFFFF),
                                                                      boxShadow: const [
                                                                        BoxShadow(
                                                                          color: Color(0x0D1A1A1A),
                                                                          blurRadius: 2,
                                                                          offset: Offset(0, 1),
                                                                        ),
                                                                      ],
                                                                    ),
                                                                    height: 36,
                                                                    width: double.infinity,
                                                                    child: TextField(
                                                                      controller: _passwordController,
                                                                      obscureText: true,
                                                                      style: const TextStyle(
                                                                        color: Color(0xFF70707A),
                                                                        fontSize: 14,
                                                                      ),
                                                                      decoration: const InputDecoration(
                                                                        hintText: "••••••••",
                                                                        isDense: true,
                                                                        contentPadding: EdgeInsets.only(top: 8, bottom: 8, left: 12, right: 12),
                                                                        border: InputBorder.none,
                                                                        focusedBorder: InputBorder.none,
                                                                        filled: false,
                                                                      ),
                                                                    ),
                                                                  ),
                                                                ],
                                                              ),
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ),
                                                  // Login button
                                                  InkWell(
                                                    onTap: _handleLogin,
                                                    child: IntrinsicHeight(
                                                      child: Container(
                                                        decoration: BoxDecoration(
                                                          borderRadius: BorderRadius.circular(8),
                                                          color: const Color(0xFF171717),
                                                          boxShadow: const [
                                                            BoxShadow(
                                                              color: Color(0x0D1A1A1A),
                                                              blurRadius: 2,
                                                              offset: Offset(0, 1),
                                                            ),
                                                          ],
                                                        ),
                                                        padding: const EdgeInsets.symmetric(vertical: 8),
                                                        margin: const EdgeInsets.only(bottom: 16, left: 24, right: 24),
                                                        width: double.infinity,
                                                        child: const Column(
                                                          children: [
                                                            Text(
                                                              "Login",
                                                              style: TextStyle(
                                                                color: Color(0xFFFAFAFA),
                                                                fontSize: 14,
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                  // Sign up link
                                                  GestureDetector(
                                                    onTap: _navigateToSignUp,
                                                    child: const Text(
                                                      "Don't have an account? Sign up",
                                                      style: TextStyle(
                                                        color: Color(0xFF09090B),
                                                        fontSize: 14,
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}