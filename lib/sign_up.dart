import 'package:flutter/material.dart';
import 'package:flutter_application_1/Style/app_colors.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final _nameController = TextEditingController();
  final _emailController = TextEditingController();
  final _phoneController = TextEditingController();
  final _passwordController = TextEditingController();
  final _confirmPasswordController = TextEditingController();
  bool _agreeToTerm = false;
  bool _obscurePassword = true;
  bool _obscureConfirmPassword = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.backgroundColor,
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(Icons.arrow_back,color: AppColors.primaryColor,size: 28,)),
        title: Text('Set up Your account',style: TextStyle(color: AppColors.white),),
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Text(
                'Please complete all information to create your account on Safelock',
                style: TextStyle(
                  color: AppColors.white,
                  fontSize: 18,
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 20),
              _buildTextField(controller: _nameController, hintText: 'Name'),
              SizedBox(height: 20),
              _buildTextField(controller: _emailController, hintText: 'Email'),
              SizedBox(height: 20),
              _buildPhoneField(),
              SizedBox(height: 20),
              _buildPasswordField(
                  controller: _passwordController,
                  hintText: 'Password',
                  obscureText: _obscurePassword,
                  toggleVisibility: () {
                    setState(() {
                      _obscurePassword = !_obscurePassword;
                    });
                  }),
              SizedBox(height: 20),
              _buildPasswordField(
                  controller: _confirmPasswordController,
                  hintText: 'ConfirmPassword',
                  obscureText: _obscureConfirmPassword,
                  toggleVisibility: () {
                    setState(() {
                      _obscureConfirmPassword = !_obscureConfirmPassword;
                    });
                  }),
              SizedBox(height: 20),
              Row(
                children: [
                  Checkbox(
                      checkColor: AppColors.primaryColor,
                      activeColor: AppColors.white,
                      value: _agreeToTerm,
                      onChanged: (value) {
                        setState(() {
                          _agreeToTerm = !_agreeToTerm;
                        });
                      }),
                  Expanded(
                      child:
                          Text.rich(TextSpan(text: 'Agree to The',style: TextStyle(color: AppColors.white,), children: [
                            WidgetSpan(child: SizedBox(width: 3)),
                    TextSpan(
                        text: 'Terms of Use',
                        style: TextStyle(
                          color: AppColors.white,fontWeight: FontWeight.bold
                        )),
                        WidgetSpan(child: SizedBox(width: 4)),
                    TextSpan(text: 'and' ,style: TextStyle(color: Colors.white)),
                     WidgetSpan(child: SizedBox(width: 4)),
                    TextSpan(
                        text: 'Privacy Policy',
                        style: TextStyle(color: AppColors.white,fontWeight: FontWeight.bold))
                  ])))
                ],
              ),
              SizedBox(height: 20),

              ElevatedButton(onPressed: (){},
              style: ElevatedButton.styleFrom(
               padding: EdgeInsets.symmetric(horizontal: 30,vertical: 10)

              ),
              
              
              
               child:Text('Create Account') )

            ],
          ),
        ),
      ),
    );
  }

  Widget _buildTextField(
      {required TextEditingController controller, required String hintText}) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: AppColors.primaryColor,
        
        ),
        borderRadius: BorderRadius.circular(12),
      ),
      child: TextField(
        cursorColor: AppColors.primaryColor,
        controller: controller,
        style: TextStyle(color: AppColors.white),
        decoration: InputDecoration(
          
          hintStyle: TextStyle(color: AppColors.white),
          hintText: hintText,
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
           focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: AppColors.white),
          borderRadius: BorderRadius.circular(12),
          ),
        ),
      ),
    );
  }

  Widget _buildPhoneField() {
    return Container(
       decoration: BoxDecoration(
        border: Border.all(color: AppColors.primaryColor,
        
        ),
        borderRadius: BorderRadius.circular(12),
      ),
      child: TextField(
        
        cursorColor: AppColors.primaryColor,
        style: TextStyle(color: AppColors.white),
        controller: _phoneController,
        keyboardType: TextInputType.phone,
        
        decoration: InputDecoration(
          hintStyle: TextStyle(color: AppColors.white),
          prefixIcon: Icon(Icons.flag,color: AppColors.primaryColor,),
          hintText: 'Phone',
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
          focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: AppColors.white),
          borderRadius: BorderRadius.circular(12),
          ),
          
        ),
      
      ),
    );
  }

  Widget _buildPasswordField(
      {required TextEditingController controller,
      required String hintText,
      required bool obscureText,
      required VoidCallback toggleVisibility}) {
    return Container(
       decoration: BoxDecoration(
        border: Border.all(color: AppColors.primaryColor,
        
        ),
        borderRadius: BorderRadius.circular(12),
      ),
      child: TextField(
        cursorColor: AppColors.primaryColor,
        style: TextStyle(color: AppColors.white),
        controller: controller,
        obscureText: obscureText,
        decoration: InputDecoration(
          hintStyle: TextStyle(color: AppColors.white),
          hintText: hintText,
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
           focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: AppColors.white),
          borderRadius: BorderRadius.circular(12),
          ),
          suffixIcon: IconButton(
              onPressed: toggleVisibility,
              icon: Icon(obscureText ? Icons.visibility_off : Icons.visibility,color: AppColors.primaryColor)),
        ),
      ),
    );
  }
}
