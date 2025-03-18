import 'package:flutter/material.dart';
import 'package:flutter_application_1/config/app_colors.dart';
import 'package:flutter_application_1/features/authentication/screens/sign_up_screen.dart';
import 'package:flutter_application_1/features/home/screens/home_screen.dart';
import 'package:flutter_application_1/gen/assets.gen.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SignApp extends StatefulWidget {
  const SignApp({super.key});

  @override
  State<SignApp> createState() => _SignAppState();
}

class _SignAppState extends State<SignApp> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  bool _remeber = false;
  @override
  void initState() {
    super.initState();
    _loadSavedCredentials();
  }

  Future<void> _loadSavedCredentials() async {
    final prefs = await SharedPreferences.getInstance();
    setState(() {
      _emailController.text = prefs.getString('email') ?? '';
      _passwordController.text = prefs.getString('password') ?? '';
      _remeber = prefs.getBool('remember') ?? false;
    });
  }

  Future<void> _login() async {
    final prefs = await SharedPreferences.getInstance();

    if (_remeber) {
      await prefs.setString('email', _emailController.text);
      await prefs.setString('password', _passwordController.text);
      await prefs.setBool('remeber', true);
    } else {
      await prefs.remove('email');
      await prefs.remove('password');
      await prefs.setBool('remember', false);
    }

    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => HomeScreen()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //Benuter-Icon
            Image.asset(
              Assets.splash.usericon.path,
              height: 150,
              width: 150,
              fit: BoxFit.cover,
            ),
            SizedBox(height: 40),
            //E-Mail Feld
            _builTexField(
                controller: _emailController,
                hintText: 'Email',
                icon: Icons.email),
            SizedBox(height: 20),
            //Password Feld
            _builTexField(
                controller: _passwordController,
                hintText: 'password',
                icon: Icons.lock,
                obscureText: true),
            SizedBox(height: 10),
            Row(
              children: [
                CheckboxTheme(
                    data: CheckboxThemeData(
                        side: BorderSide(color: AppColors.primaryColor)),
                    child: Checkbox(
                        activeColor: AppColors.primaryColor,
                        value: _remeber,
                        onChanged: (value) {
                          setState(() {
                            _remeber = !_remeber;
                          });
                        })),
                Text(
                  'Remeber me',
                  style: TextStyle(color: AppColors.white),
                )
              ],
            ),
            SizedBox(height: 20),

            //Login Button
            _buildButton("Login", _login),

            SizedBox(height: 20),
            // Create Account
            _buildButton("Create Account", () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => SignUpScreen(),
                  ));
            }),
          ],
        ),
      ),
    );
  }

  Widget _builTexField(
      {required TextEditingController controller,
      required String hintText,
      required IconData icon,
      bool obscureText = false}) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.9,
      child: TextField(
        controller: controller,
        obscureText: obscureText,
        decoration: InputDecoration(
            prefixIcon: Icon(icon, color: AppColors.greyS),
            hintText: hintText,
            filled: true,
            fillColor: AppColors.white,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide.none,
            )),
      ),
    );
  }

  Widget _buildButton(String text, VoidCallback onPressed) {
    return Align(
      alignment: Alignment.topLeft,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: ElevatedButton(
          onPressed: onPressed,
          child: Text(text),
        ),
      ),
    );
  }
}
