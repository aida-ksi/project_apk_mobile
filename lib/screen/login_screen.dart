import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:objekwisata/screen/dashboard_screen.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Column(
            children: [
              const SizedBox(height: 30),
              Row(
                children: [
                  IconButton(
                    icon: const Icon(Icons.arrow_back_rounded, color: Colors.black, size: 30),
                    onPressed: () {
                      Navigator.of(context).pushReplacement(
                      MaterialPageRoute(builder: (context) => HomeScreen()),
                    );
                    },
                  ),
                ],
              ),
              const SizedBox(height: 20),
              Image.asset(
                'assets/images/logo.png',
                height: 150,
              ),
              Text(
                'Selamat Datang,',
                style: GoogleFonts.manrope(
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              const SizedBox(height: 8),
              Text(
                'Senang bertemu denganmu!',
                style: GoogleFonts.manrope(
                  fontSize: 18,
                  color: Colors.black,
                ),
              ),
              const SizedBox(height: 32),
              TextField(
                decoration: InputDecoration(
                  labelText: 'Username',
                  hintText: '',
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: const BorderSide(color: Colors.grey),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: const BorderSide(color: Colors.blue),
                  ),
                ),
                keyboardType: TextInputType.emailAddress,
              ),
              const SizedBox(height: 24),
              TextField(
                decoration: InputDecoration(
                  labelText: 'Password',
                  hintText: '',
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: const BorderSide(color: Colors.grey),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: const BorderSide(color: Colors.blue),
                  ),
                  suffixIcon: const Icon(Icons.visibility_off),
                ),
                obscureText: true,
              ),
              const SizedBox(height: 8),
              Align(
                alignment: Alignment.centerRight,
                child: TextButton(
                  onPressed: () {},
                  child: const Text(
                    'Lupa Password?',
                    style: TextStyle(color: Colors.blue),
                  ),
                ),
              ),
              const SizedBox(height: 24),
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  minimumSize: const Size(double.infinity, 50),
                  backgroundColor: Colors.blue,
                  foregroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                child: const Text('Masuk'),
              ),
              const SizedBox(height: 16),
              Row(
                children: [
                  Expanded(
                    child: Divider(
                      color: Colors.grey[400],
                      thickness: 1,
                    ),
                  ),
                  const SizedBox(width: 8),
                  const Text('Atau Masuk Dengan'),
                  const SizedBox(width: 8),
                  Expanded(
                    child: Divider(
                      color: Colors.grey[400],
                      thickness: 1,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 16),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton.icon(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                      side: const BorderSide(color: Colors.grey),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    icon: Image.asset('assets/images/logo_google.png', height: 24),
                    label: const Text('Google'),
                  ),
                  const SizedBox(width: 16),
                  ElevatedButton.icon(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                      side: const BorderSide(color: Colors.grey),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    icon: Image.asset('assets/images/logo_facebook.png', height: 24),
                    label: const Text('Facebook'),
                  ),
                ],
              ),
              const SizedBox(height: 32),
              GestureDetector(
                onTap: () {},
                child: RichText(
                  text: TextSpan(
                    style: GoogleFonts.manrope(
                      fontSize: 14,
                      color: const Color(0xFF101317),
                    ),
                    children: const [
                      TextSpan(text: 'Sudah punya akun? '),
                      TextSpan(
                        text: 'Masuk Sekarang',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.blue,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}