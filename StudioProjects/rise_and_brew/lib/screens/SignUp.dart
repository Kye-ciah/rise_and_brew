import 'package:flutter/material.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  SignUpState createState() => SignUpState();
}

class SignUpState extends State<SignUp> {
  String email = '';
  String password = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () {
            Navigator.pushReplacementNamed(context, '/login');
          },
        ),
      ),
      body: SafeArea(
        child: Container(
          constraints: const BoxConstraints.expand(),
          color: const Color(0xFFFFFFFF),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: Container(
                  color: const Color(0xFF4C6D5A),
                  width: double.infinity,
                  child: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          padding: const EdgeInsets.only(top: 60),
                          width: double.infinity,
                          child: Column(
                            children: [
                              // Logo
                              Container(
                                margin: const EdgeInsets.only(bottom: 24),
                                width: 73,
                                height: 79,
                                child: Image.network(
                                  "https://storage.googleapis.com/tagjs-prod.appspot.com/v1/QrSetwG1mZ/zci7ug8t_expires_30_days.png",
                                  fit: BoxFit.fill,
                                ),
                              ),

                              // App Name
                              Container(
                                margin: const EdgeInsets.only(bottom: 24),
                                child: const Text(
                                  "RISE & BREW",
                                  style: TextStyle(
                                    color: Color(0xFFFFFFFF),
                                    fontSize: 27,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),

                              // White Card
                              Container(
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
                                    // Header
                                    Container(
                                      padding: const EdgeInsets.symmetric(vertical: 24),
                                      width: double.infinity,
                                      child: Column(
                                        children: [
                                          Container(
                                            margin: const EdgeInsets.only(bottom: 6),
                                            child: const Text(
                                              "Create Account",
                                              style: TextStyle(
                                                color: Color(0xFF09090B),
                                                fontSize: 24,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                          ),
                                          const Text(
                                            "Sign up with your google Account",
                                            style: TextStyle(
                                              color: Color(0xFF70707A),
                                              fontSize: 14,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),

                                    // Form Section
                                    Container(
                                      padding: const EdgeInsets.only(bottom: 24),
                                      width: double.infinity,
                                      child: Column(
                                        children: [
                                          // Google Sign Up Button
                                          InkWell(
                                            onTap: () {
                                              debugPrint('Google sign up pressed');
                                            },
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
                                                        "https://storage.googleapis.com/tagjs-prod.appspot.com/v1/QrSetwG1mZ/rq83c4h1_expires_30_days.png",
                                                        fit: BoxFit.fill,
                                                      ),
                                                    ),
                                                  ),
                                                  const Text(
                                                    "Sign up with Google",
                                                    style: TextStyle(
                                                      color: Color(0xFF09090B),
                                                      fontSize: 14,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),

                                          // Divider
                                          Container(
                                            margin: const EdgeInsets.only(bottom: 16, left: 24, right: 24),
                                            width: double.infinity,
                                            child: Row(
                                              children: [
                                                Expanded(
                                                  child: Container(
                                                    height: 1,
                                                    color: const Color(0xFFE4E4E7),
                                                  ),
                                                ),
                                                Container(
                                                  margin: const EdgeInsets.symmetric(horizontal: 12),
                                                  child: const Text(
                                                    "Or continue with",
                                                    style: TextStyle(
                                                      color: Color(0xFF70707A),
                                                      fontSize: 14,
                                                    ),
                                                  ),
                                                ),
                                                Expanded(
                                                  child: Container(
                                                    height: 1,
                                                    color: const Color(0xFFE4E4E7),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),

                                          // Email and Password Fields
                                          Container(
                                            margin: const EdgeInsets.only(bottom: 16, left: 24, right: 24),
                                            width: double.infinity,
                                            child: Column(
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              children: [
                                                const SizedBox(height: 8),

                                                // Email Field
                                                Container(
                                                  margin: const EdgeInsets.only(bottom: 16),
                                                  width: double.infinity,
                                                  child: Column(
                                                    crossAxisAlignment: CrossAxisAlignment.start,
                                                    children: [
                                                      const SizedBox(height: 8),
                                                      Container(
                                                        margin: const EdgeInsets.only(bottom: 8),
                                                        width: double.infinity,
                                                        child: const Text(
                                                          "Email",
                                                          style: TextStyle(
                                                            color: Color(0xFF09090B),
                                                            fontSize: 14,
                                                          ),
                                                        ),
                                                      ),
                                                      const SizedBox(height: 4),
                                                      Container(
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
                                                          style: const TextStyle(
                                                            color: Color(0xFF70707A),
                                                            fontSize: 14,
                                                          ),
                                                          onChanged: (value) {
                                                            setState(() {
                                                              email = value;
                                                            });
                                                          },
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
                                                    ],
                                                  ),
                                                ),
                                                const SizedBox(height: 8),

                                                // Password Field
                                                Container(
                                                  width: double.infinity,
                                                  child: Column(
                                                    crossAxisAlignment: CrossAxisAlignment.start,
                                                    children: [
                                                      const SizedBox(height: 8),
                                                      Container(
                                                        margin: const EdgeInsets.only(bottom: 8),
                                                        width: double.infinity,
                                                        child: const Text(
                                                          "Password",
                                                          style: TextStyle(
                                                            color: Color(0xFF09090B),
                                                            fontSize: 14,
                                                          ),
                                                        ),
                                                      ),
                                                      const SizedBox(height: 4),
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
                                                        width: double.infinity,
                                                        child: TextField(
                                                          style: const TextStyle(
                                                            color: Color(0xFF70707A),
                                                            fontSize: 14,
                                                          ),
                                                          obscureText: true,
                                                          onChanged: (value) {
                                                            setState(() {
                                                              password = value;
                                                            });
                                                          },
                                                          decoration: const InputDecoration(
                                                            hintText: "Enter your password",
                                                            isDense: true,
                                                            contentPadding: EdgeInsets.only(top: 8, bottom: 8, left: 12, right: 12),
                                                            border: InputBorder.none,
                                                            focusedBorder: InputBorder.none,
                                                            filled: false,
                                                          ),
                                                        ),
                                                      ),
                                                      const SizedBox(height: 8),
                                                    ],
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),

                                          // SIGN UP BUTTON - UPDATED to navigate to HomePage
                                          InkWell(
                                            onTap: () {
                                              // Navigate to HomePage when sign up is pressed
                                              Navigator.pushReplacementNamed(context, '/home');
                                            },
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
                                                    "Sign Up",
                                                    style: TextStyle(
                                                      color: Color(0xFFFAFAFA),
                                                      fontSize: 14,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),

                                          const SizedBox(height: 8),

                                          // Login Link
                                          GestureDetector(
                                            onTap: () {
                                              Navigator.pushReplacementNamed(context, '/login');
                                            },
                                            child: const Text(
                                              "Have an account? Login",
                                              style: TextStyle(
                                                color: Color(0xFF09090B),
                                                fontSize: 14,
                                                decoration: TextDecoration.underline,
                                                decorationColor: Color(0xFF09090B),
                                              ),
                                            ),
                                          ),

                                          const SizedBox(height: 8),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
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