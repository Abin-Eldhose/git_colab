import 'package:flutter/material.dart';
import 'package:git_colab/login_page.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "sign up",
                style: TextStyle(
                    color: Colors.black87,
                    fontWeight: FontWeight.bold,
                    fontSize: 35),
              ),
              const SizedBox(height: 20),
              Row(
                children: [
                  Expanded(
                    child: TextFormField(
                      decoration: InputDecoration(
                          labelText: "First name",
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30))),
                      style: const TextStyle(color: Colors.white),
                    ),
                  ),
                  const SizedBox(width: 15),
                  Expanded(
                    child: TextFormField(
                      decoration: InputDecoration(
                          labelText: "Last name",
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30))),
                      style: const TextStyle(color: Colors.white),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              TextFormField(
                decoration: InputDecoration(
                  labelText: "Email",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30)),
                ),
                style: const TextStyle(color: Colors.white),
              ),
              const SizedBox(height: 20),
              TextFormField(
                decoration: InputDecoration(
                  labelText: "Phone number",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30)),
                ),
                style: const TextStyle(color: Colors.white),
              ),
              const SizedBox(height: 20),
              TextFormField(
                decoration: InputDecoration(
                  labelText: "Password",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30)),
                  suffixIcon: const Icon(Icons.visibility),
                ),
                style: const TextStyle(color: Colors.white),
              ),
              const SizedBox(height: 20),
              TextFormField(
                decoration: InputDecoration(
                    labelText: "Confirm Password",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30)),
                    suffixIcon: const Icon(
                      Icons.visibility,
                    )),
                style: const TextStyle(color: Colors.white),
              ),
              const SizedBox(height: 20),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.black87,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                    padding: const EdgeInsets.symmetric(vertical: 15),
                  ),
                  onPressed: () {},
                  child: const Text(
                    'Sign up',
                    style: TextStyle(fontSize: 18, color: Colors.white),
                  ),
                ),
              ),
              const SizedBox(height: 50),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "Already have an account?",
                    style: TextStyle(color: Colors.black87, fontSize: 14),
                  ),
                  TextButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const LoginPage()));
                      },
                      child: const Text(
                        "sign in",
                        style: TextStyle(color: Colors.red),
                      )),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
