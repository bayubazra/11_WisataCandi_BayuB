import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class SignUpScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _SignUpScreen();
}

class _SignUpScreen extends State<SignUpScreen> {
  // TODO: Deklarasi variable;
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  String _errorMessage = "";
  bool _isSignin = false;
  bool _obsecurePassword = false;

  // TODO 1. Membuat fungsi _signUp
  void _signUp() {
    String name = _nameController.text.trim();
    String username = _usernameController.text.trim();
    String password = _passwordController.text.trim();

    if (password.length < 8 ||
        !password.contains(RegExp(r'[A-Z]')) ||
        !password.contains(RegExp(r'[a-z]')) ||
        !password.contains(RegExp(r'[0-9]')) ||
        !password.contains(RegExp(r'[!@#$%^&*(),.?:{}|<>]'))) ;
    print('*** Sign up berhasil!');
    print('Nama : $name');
    print('Nama Pengguna : $username');
    print('Password : $password');
  }

  // TODO 2. Membuat fungsi dispose
  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // TODO: Pasang AppBar;
      appBar: AppBar(
        title: const Text("Sign in"),
      ),
      // TODO: Pasang Body;
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              // TODO: Atur mainAxisAlignment dan CrossAxisAlignment;
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                // TODO: Nama lengkap;
                TextFormField(
                  controller: _nameController,
                  decoration: const InputDecoration(
                      labelText: "Nama", border: OutlineInputBorder()),
                ),
                SizedBox(
                  height: 20.0,
                ),
                // TODO: Pasang TextFormField Nama pengguna;
                TextFormField(
                  controller: _usernameController,
                  decoration: const InputDecoration(
                      labelText: "Nama pengguna", border: OutlineInputBorder()),
                ),

                // TODO: Pasang TextFormField Password;
                SizedBox(
                  height: 20,
                ),
                TextFormField(
                  controller: _passwordController,
                  decoration: InputDecoration(
                    labelText: "Kata Sandi",
                    border: OutlineInputBorder(),
                    errorText: _errorMessage.isNotEmpty ? _errorMessage : null,
                    suffixIcon: IconButton(
                        onPressed: () {
                          setState(() {
                            _obsecurePassword = !_obsecurePassword;
                          });
                        },
                        icon: Icon(_obsecurePassword
                            ? Icons.visibility_off
                            : Icons.visibility)),
                  ),
                  obscureText: _obsecurePassword,
                ),
                // TODO: Pasang ElevatedButton Sign in;
                SizedBox(
                  height: 20,
                ),
                ElevatedButton(
                  onPressed: () {},
                  child: Text("Login"),
                ),
                SizedBox(
                  height: 20,
                ),
                RichText(
                    text: TextSpan(
                        text: "Sudah punya akun? ",
                        style: const TextStyle(
                            fontSize: 16, color: Colors.deepPurple),
                        children: <TextSpan>[
                      TextSpan(
                        text: "login!",
                        style: const TextStyle(
                          color: Colors.blue,
                          decoration: TextDecoration.underline,
                          fontSize: 16,
                        ),
                        recognizer: TapGestureRecognizer()..onTap = () {},
                      )
                    ]))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
