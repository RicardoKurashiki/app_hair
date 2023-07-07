import 'package:app_hair/app/shared/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class AuthPage extends StatefulWidget {
  const AuthPage({super.key});

  @override
  State<AuthPage> createState() => _AuthPageState();
}

class _AuthPageState extends State<AuthPage> {
  Widget _buildPhoto() {
    return Container(
      height: MediaQuery.sizeOf(context).height * 0.6,
      color: Colors.purple,
    );
  }

  Widget _buildData() {
    final decoration = BoxDecoration(
      borderRadius: BorderRadius.vertical(top: Radius.circular(24)),
      color: Colors.white,
      boxShadow: [
        BoxShadow(
          color: Colors.black.withOpacity(0.08),
          offset: Offset.zero,
          blurRadius: 24,
          spreadRadius: 4,
        ),
      ],
    );
    return Container(
      height: MediaQuery.sizeOf(context).height * 0.5,
      decoration: decoration,
      padding: const EdgeInsets.all(16),
      child: Column(
        children: [
          SizedBox(
            width: double.infinity,
            child: TextButton(
              onPressed: () {},
              child: Text(
                "SIGN UP",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.purple),
                shadowColor:
                    MaterialStateProperty.all(Colors.purple.withOpacity(0.2)),
                shape: MaterialStateProperty.all(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(100),
                  ),
                ),
                elevation: MaterialStateProperty.all(5),
              ),
            ),
          ),
          const SizedBox(height: 8),
          SizedBox(
            width: double.infinity,
            child: TextButton(
              onPressed: () {
                Modular.to.pushNamed(AppRoutes.loginPage());
              },
              child: Text(
                "SIGN IN TO YOUR ACCOUNT",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.white),
                shadowColor:
                    MaterialStateProperty.all(Colors.purple.withOpacity(0.2)),
                shape: MaterialStateProperty.all(RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(100),
                    side: BorderSide(color: Colors.grey[300]!))),
                elevation: MaterialStateProperty.all(5),
              ),
            ),
          ),
          const SizedBox(height: 16),
          Divider(height: 0),
          const SizedBox(height: 16),
          SizedBox(
            width: double.infinity,
            child: TextButton(
              onPressed: () {},
              child: Text(
                "SIGN IN WITH APPLE",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.white),
                shadowColor:
                    MaterialStateProperty.all(Colors.purple.withOpacity(0.2)),
                shape: MaterialStateProperty.all(RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(100),
                    side: BorderSide(color: Colors.grey[300]!))),
                elevation: MaterialStateProperty.all(5),
              ),
            ),
          ),
          const SizedBox(height: 8),
          SizedBox(
            width: double.infinity,
            child: TextButton(
              onPressed: () {},
              child: Text(
                "SIGN IN WITH GOOGLE",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.white),
                shadowColor:
                    MaterialStateProperty.all(Colors.purple.withOpacity(0.2)),
                elevation: MaterialStateProperty.all(5),
                shape: MaterialStateProperty.all(RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(100),
                    side: BorderSide(color: Colors.grey[300]!))),
              ),
            ),
          ),
          const SizedBox(height: 8),
          SizedBox(
            width: double.infinity,
            child: TextButton(
              onPressed: () {},
              child: Text(
                "SIGN IN WITH FACEBOOK",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.white),
                shadowColor:
                    MaterialStateProperty.all(Colors.purple.withOpacity(0.2)),
                elevation: MaterialStateProperty.all(5),
                shape: MaterialStateProperty.all(RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(100),
                    side: BorderSide(color: Colors.grey[300]!))),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildPage() {
    return Stack(
      children: [
        Positioned(
          top: 0,
          left: 0,
          right: 0,
          child: _buildPhoto(),
        ),
        Positioned(
          bottom: 0,
          left: 0,
          right: 0,
          child: _buildData(),
        )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _buildPage(),
    );
  }
}
