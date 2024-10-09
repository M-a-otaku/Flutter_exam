import 'package:exam/src/pages/login_page/controller/login_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginPage extends GetView<LoginController> {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) =>
    Scaffold(
      appBar: _appBar(),
      body: _body(),
    );
    
    AppBar _appBar() {
    return AppBar(
      title: const Text('LoginPage',style: TextStyle(fontSize: 23),),
      centerTitle: true,
    );
  }


  Widget _username() {
    return TextFormField(
      controller: controller.usernameController,
      validator: controller.validate,
      cursorColor: Colors.blueAccent,
       decoration: InputDecoration(
        labelText: 'Username',
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(7),
        ),
      ),
    );
  }

  Widget _password() {
    return TextFormField(
      controller: controller.passwordController,
      validator: controller.validate,
      obscureText: true,
      cursorColor: Colors.blueAccent,
      decoration: InputDecoration(
        labelText: 'Password',
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(7),
        ),
      ),
    );
  }





  Widget _loginButton() {
    return InkWell(
      onTap: controller.login,
      borderRadius: BorderRadius.circular(12),
      child: Container(
        alignment: Alignment.center,
        padding: const EdgeInsets.symmetric(vertical: 12),
        width: double.infinity,
        decoration: BoxDecoration(
          color: Colors.cyan,
          borderRadius: BorderRadius.circular(12),
        ),
        child: const Text(
          'LOGIN',
          style: TextStyle(
            fontSize: 16,
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }

Widget _body() {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
      child: Form(
        key: controller.formKey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            _username(),
            const SizedBox(height: 15),
            _password(),
            const SizedBox(height: 15),
            _loginButton(),
            const SizedBox(height: 24),
          ],
        ),
      ),
    );
  }
}