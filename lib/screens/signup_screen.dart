import 'package:auth_practice/providers/auth_provider.dart';
import 'package:auth_practice/routes/routes.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  GlobalKey<FormState> _formkey = GlobalKey();
  TextEditingController nameCon = TextEditingController();
  TextEditingController emailCon = TextEditingController();
  TextEditingController passCon = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                width: MediaQuery.of(context).size.width,
                height: 70,
              ),
              Column(
                children: [
                  ElevatedButton(
                    onPressed: () {},
                    child: const Text("Register Google"),
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    child: const Text("Register Facebook"),
                  ),
                ],
              ),
              Form(
                key: _formkey,
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    children: [
                      TextFormField(
                        validator: (val) {
                          if (val!.isEmpty) {
                            return "Name Required";
                          }
                          return null;
                        },
                        controller: nameCon,
                        decoration: const InputDecoration(
                          label: Text("Enter Name"),
                        ),
                      ),
                      TextFormField(
                        validator: (val) {
                          if (val!.isEmpty) {
                            return "Email Required";
                          }
                          return null;
                        },
                        controller: emailCon,
                        decoration: const InputDecoration(
                          label: Text("Enter Email"),
                        ),
                      ),
                      TextFormField(
                        validator: (val) {
                          if (val!.isEmpty) {
                            return "Password Required";
                          }
                          return null;
                        },
                        controller: passCon,
                        obscureText: true,
                        decoration: const InputDecoration(
                          label: Text("Enter Password"),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 100,
              ),
              ElevatedButton(
                onPressed: () {
                  if (_formkey.currentState!.validate()) {
                    Provider.of<AuthProvider>(context, listen: false)
                        .signUpWithEmailPass(context,
                            name: nameCon.text,
                            email: emailCon.text,
                            password: passCon.text);
                  } else {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                        content: Text("Internal Issue"),
                      ),
                    );
                  }
                },
                child: const Text("Register"),
              ),
              TextButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: const Text("Already have an Account? Login"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
