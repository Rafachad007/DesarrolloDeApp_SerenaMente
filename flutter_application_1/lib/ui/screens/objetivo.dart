import 'package:flutter/material.dart';

import 'principal.dart'; // Para que conozca WelcomeScreen

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF5EFE7),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          child: Column(
            children: [
              const SizedBox(height: 40),
              Container(
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                  color: Colors.white,
                  shape: BoxShape.circle,
                  border: Border.all(color: const Color(0xFF3D5A4C), width: 2),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Image.asset('assets/icons/LOGO_SIMPLE.png'),
                ),
              ),
              const SizedBox(height: 40),
              const Text(
                'Hola, (Usuario).',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w500,
                  color: Color(0xFF2C3E37),
                ),
              ),
              const SizedBox(height: 40),
              SizedBox(
                width: 200,
                height: 200,
                child: Image.asset(
                  'assets/images/ICONO_PRINCIPAL-Photoroom.png',
                ),
              ),
              const SizedBox(height: 40),
              const Text(
                'Cual es tu objetivo con',
                style: TextStyle(fontSize: 18, color: Color(0xFF2C3E37)),
              ),
              const Text(
                'SerenaMente?',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                  color: Color(0xFF2C3E37),
                ),
              ),
              const SizedBox(height: 30),
              _buildOptionButton(context, 'Dormir mejor'),
              const SizedBox(height: 12),
              _buildOptionButton(context, 'Reducir ansiedad'),
              const SizedBox(height: 12),
              _buildOptionButton(context, 'Concentrarme'),
              const Spacer(),
              Container(
                width: 40,
                height: 4,
                decoration: BoxDecoration(
                  color: const Color(0xFF2C3E37),
                  borderRadius: BorderRadius.circular(2),
                ),
              ),
              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildOptionButton(BuildContext context, String text) {
    return GestureDetector(
      onTap: () {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => const HomeScreen()),
        );
      },
      child: Container(
        width: double.infinity,
        padding: const EdgeInsets.symmetric(vertical: 16),
        decoration: BoxDecoration(
          color: const Color(0xFFE8D4B8),
          borderRadius: BorderRadius.circular(8),
        ),
        child: Text(
          text,
          textAlign: TextAlign.center,
          style: const TextStyle(
            fontSize: 16,
            color: Color(0xFF2C3E37),
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    );
  }
}
