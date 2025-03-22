import 'package:flutter/material.dart';
import 'home.dart';

void main() {
  runApp(const ConsignAyuApp());
}

class ConsignAyuApp extends StatelessWidget {
  const ConsignAyuApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginScreen(),
    );
  }
}

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController emailController = TextEditingController();

  final TextEditingController passwordController = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  void _login() {
    if (_formKey.currentState!.validate()) {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => HomePage()),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: Form(
            key: _formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(height: 40),
                _buildLogo(),
                const SizedBox(height: 20),
                // _buildAppTitle(),
                // const SizedBox(height: 30),
                _buildEmailInput(),
                const SizedBox(height: 15),
                _buildPasswordInput(),
                const SizedBox(height: 10),
                _buildForgotPassword(),
                const SizedBox(height: 10),
                _buildLoginButton(),
                const SizedBox(height: 15),
                _buildSignUpOption(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  // Widget _buildLogo() {
  //   return Container(
  //     width: 80,
  //     height: 80,
  //     color: Colors.green[800],
  //   );
  // }

  Widget _buildLogo() {
    return Container(
      width: 250,
      height: 250,
      decoration: BoxDecoration(
        image: DecorationImage(
          image:
              AssetImage('img/LogoAyu.png'), // Sesuaikan dengan path logo Anda
          fit: BoxFit.cover,
        ),
      ),
    );
  }

  // Widget _buildAppTitle() {
  //   return const Text(
  //     "CONSIGNAYU",
  //     style: TextStyle(
  //       fontSize: 22,
  //       fontWeight: FontWeight.bold,
  //       color: Colors.black,
  //     ),
  //   );
  // }

  Widget _buildEmailInput() {
    return Row(
      children: [
        Expanded(
          child: TextFormField(
            controller: emailController,
            decoration: const InputDecoration(
              border: OutlineInputBorder(),
              hintText: "Email",
              contentPadding: EdgeInsets.symmetric(horizontal: 10),
            ),
            validator: (value) => value == null || value.isEmpty
                ? "Email tidak boleh kosong"
                : null,
          ),
        ),
      ],
    );
  }

  Widget _buildPasswordInput() {
    return Row(
      children: [
        Expanded(
          child: TextFormField(
            controller: passwordController,
            obscureText: true,
            decoration: const InputDecoration(
              border: OutlineInputBorder(),
              hintText: "Password",
              contentPadding: EdgeInsets.symmetric(horizontal: 10),
            ),
            validator: (value) => value == null || value.isEmpty
                ? "Password tidak boleh kosong"
                : null,
          ),
        ),
      ],
    );
  }

  Widget _buildForgotPassword() {
    return Align(
      alignment: Alignment.centerRight,
      child: TextButton(
        onPressed: () {},
        child: const Text(
          "Forgot Password?",
          style: TextStyle(color: Colors.black),
        ),
      ),
    );
  }

  Widget _buildLoginButton() {
    return ElevatedButton(
      onPressed: _login,
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.green[800],
        minimumSize: const Size(double.infinity, 45),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
      ),
      child: const Text(
        "Login",
        style: TextStyle(color: Colors.white, fontSize: 16),
      ),
    );
  }

  Widget _buildSignUpOption() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text("Don't have an Account? "),
        GestureDetector(
          onTap: () {},
          child: const Text(
            "Sign up",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Color(0xFF2E7D32),
            ),
          ),
        ),
      ],
    );
  }
}

// Halaman Beranda setelah login berhasil
// class HomeScreen extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text("Home"),
//         backgroundColor: Colors.green[800],
//       ),
//       body: const Center(
//         child: Text(
//           "Selamat datang di aplikasi ConsignAyu!",
//           style: TextStyle(fontSize: 18),
//         ),
//       ),
//     );
//   }
// }
