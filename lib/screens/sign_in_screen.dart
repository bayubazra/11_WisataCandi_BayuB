import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class SignInScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _SignInScreen();
}

class _SignInScreen extends State<SignInScreen> {
  // TODO: Deklarasi variable;
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  String _errorMessage = "";
  bool _isSignin = false;
  bool _obsecurePassword = false;

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
                // TODO: Pasang TextFormField Nama pengguna;
                TextFormField(
                  controller: _usernameController,
                  decoration: const InputDecoration(
                      labelText: "Nama pengguna", border: OutlineInputBorder()),
                ),
                // TODO: Pasang TextFormField Kata sandi;
                SizedBox(
                  height: 20,
                ),
                TextFormField(
                  controller: _passwordController,
                  decoration: InputDecoration(
                    labelText: "Password",
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
                        text: "Belum punya akun? ",
                        style: const TextStyle(
                            fontSize: 16, color: Colors.deepPurple),
                        children: <TextSpan>[
                      TextSpan(
                        text: "daftar disini!",
                        style: const TextStyle(
                          color: Colors.blue,
                          decoration: TextDecoration.underline,
                          fontSize: 16,
                        ),
                        recognizer: TapGestureRecognizer()
                          ..onTap = () {
                            Navigator.pushNamed(context, '/signup');
                          },
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
