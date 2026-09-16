import 'package:flutter/material.dart';
import 'package:wesla/Widgets/custom_button.dart';
import 'package:wesla/Widgets/custom_text_field.dart';
import 'package:wesla/Widgets/custom_validation.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({super.key});

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  bool _isTermsAccepted = false;
  bool _isPasswordVisible = false;
  final loginFormKey = GlobalKey<FormState>();

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Welcome back',
          style: TextStyle(
            fontSize: 32,
            color: Color(0xff0D443F),
            fontWeight: FontWeight.w800,
            fontFamily: 'Manrope',
          ),
        ),
        const SizedBox(height: 5),
        const Text(
          'Log in to continue making an impact.',
          style: TextStyle(
            fontSize: 16,
            color: Color(0xff0D443F),
            fontWeight: FontWeight.w500,
            fontFamily: 'Manrope',
          ),
        ),
        const SizedBox(height: 13),
        CustomTextFieldValidator(
          formKey: loginFormKey,
          children: [
            const SizedBox(height: 10),
            CustomTextField(
              controller: emailController,
              onToggleVisibility: () {},
              label: 'Email',
              hintText: 'Enter your email',
              labelColor: const Color(0xff0D443F),
              fontSize: 13,
              fontWeight: FontWeight.w500,
              isOutline: true,
              prefixIcon: const Icon(Icons.mail_outline),
            ),
            const SizedBox(height: 10),
            CustomTextField(
              controller: passwordController,
              onToggleVisibility: () {
                setState(() {
                  _isPasswordVisible = !_isPasswordVisible;
                });
              },
              label: 'Password',
              hintText: 'Enter your Password',
              labelColor: const Color(0xff0D443F),
              fontSize: 13,
              fontWeight: FontWeight.w500,
              isOutline: true,
              prefixIcon: const Icon(Icons.lock_outline),
              suffixIcon: Icon(
                _isPasswordVisible
                    ? Icons.visibility_outlined
                    : Icons.visibility_off_outlined,
                color: Colors.grey,
              ),
              obscureText: !_isPasswordVisible,
              onAgreementChanged: (value) {
                setState(() {
                  _isTermsAccepted = value ?? false;
                });
              },
            ),
            const SizedBox(height: 7),
            Row(
              children: [
                Checkbox(
                  value: _isTermsAccepted,
                  onChanged: (value) {
                    setState(() {
                      _isTermsAccepted = value ?? false;
                    });
                  },
                ),
                const Expanded(
                  child: Text(
                    'Remeber me',
                    style: TextStyle(
                      fontSize: 14,
                      color: Color(0xff0D443F),
                      fontWeight: FontWeight.w500,
                      fontFamily: 'Manrope',
                    ),
                  ),
                ),
                const Text(
                  'Forget Password',
                  style: TextStyle(
                    fontSize: 14,
                    color: Color(0xff0D443F),
                    fontWeight: FontWeight.w500,
                    fontFamily: 'Manrope',
                  ),
                ),
              ],
            ),

            const SizedBox(height: 16),
            CustomButton(
              text: 'Log In',
              textStyle: const TextStyle(
                fontSize: 24,
                color: Colors.white,
                fontWeight: FontWeight.w400,
                fontFamily: 'Manrope',
              ),
              textcolor: Colors.white,
              ontap: () {
                if (loginFormKey.currentState!.validate()) {
                  print('Login OK');
                }
              },
              color: const Color(0xff0D443F),
            ),
            const SizedBox(height: 15),
            CustomButton.divider(),
            const SizedBox(height: 10),
            CustomButton(
              image: 'assets/images/Googel.png',
              text: 'Login with Google',
              textcolor: const Color(0xff0D443F),
              ontap: () {},
              color: Colors.white,
              textStyle: const TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.w400,
                fontFamily: 'Manrope',
              ),
            ),
            const SizedBox(height: 10),
            CustomButton(
              image: 'assets/images/facebook.png',
              text: 'Login with Facebook',
              textcolor: const Color(0xff0D443F),
              ontap: () {},
              color: Colors.white,
              textStyle: const TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.w400,
                fontFamily: 'Manrope',
              ),
            ),
          ],
        ),
      ],
    );
  }
}
