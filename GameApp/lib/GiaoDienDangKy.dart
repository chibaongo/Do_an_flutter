import 'dart:ffi';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_2/DangNhap.dart';
import 'Model/dulieuUser.dart';

class GiaoDienDangKy extends StatefulWidget {
  @override
  State<GiaoDienDangKy> createState() {
    return GiaoDienDangKyState();
  }
}

class GiaoDienDangKyState extends State<GiaoDienDangKy> {
  TextEditingController txtEmail = TextEditingController();
  TextEditingController txtPassword = TextEditingController();
  TextEditingController txtConfirmPassword = TextEditingController();
  TextEditingController txtNumberPhone = TextEditingController();
  final _auth = FirebaseAuth.instance;

  bool _showpass = false;

  var _emailErr = "Email không hợp lệ";
  var _passErr = "Mật khẩu không hợp lệ";
  var _confirmPassErr = "Không trùng với mật khẩu";
  var _phoneErr = "Số điện thoại không hợp lệ";

  var _emailIsvalid = false;
  var _passIsvalid = false;
  var _confirmPassIsvalid = false;
  var _phoneIsvalid = false;

  @override
  void dispose() {
    txtEmail.dispose();
    txtPassword.dispose();
    txtConfirmPassword.dispose();
    txtNumberPhone.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.fromLTRB(30, 0, 30, 0),
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/images/nen/nen.jpg"),
              fit: BoxFit.cover),
        ),
        constraints: const BoxConstraints.expand(),
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              const SizedBox(
                height: 60,
              ),
              Image.asset("assets/images/icon/logo1.png",
                  width: MediaQuery.of(context).size.width / 2.4),
              const Padding(
                padding: EdgeInsets.fromLTRB(0, 20, 0, 6),
                child: Text("Đăng ký",
                    style: TextStyle(
                        fontSize: 50,
                        fontWeight: FontWeight.bold,
                        color: Colors.redAccent)),
              ),
              SizedBox(
                height: 30,
              ),
              Padding(
                  padding: EdgeInsets.all(10),
                  child: TextField(
                      controller: txtNumberPhone,
                      style: TextStyle(color: Colors.blueGrey),
                      decoration: InputDecoration(
                        labelText: "Phone",
                        errorText: _phoneIsvalid ? _phoneErr : null,
                        labelStyle: TextStyle(color: Colors.redAccent),
                        prefixIcon: SizedBox(
                          width: 50,
                          child: Icon(Icons.phone),
                        ),
                        enabledBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(width: 1, color: Colors.redAccent)),
                        border: OutlineInputBorder(),
                      ))),
              Padding(
                  padding: EdgeInsets.all(10),
                  child: TextField(
                      controller: txtEmail,
                      keyboardType: TextInputType.emailAddress,
                      style: TextStyle(color: Colors.blueGrey),
                      decoration: InputDecoration(
                        labelText: "Email",
                        errorText: _emailIsvalid ? _emailErr : null,
                        labelStyle: TextStyle(color: Colors.redAccent),
                        prefixIcon: SizedBox(
                          width: 50,
                          child: Icon(Icons.mail),
                        ),
                        enabledBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(width: 1, color: Colors.redAccent)),
                        border: OutlineInputBorder(),
                      ))),
              Padding(
                padding: EdgeInsets.all(10),
                child: Stack(
                  alignment: AlignmentDirectional.centerEnd,
                  children: <Widget>[
                    TextField(
                      controller: txtPassword,
                      obscureText: !_showpass,
                      style: TextStyle(color: Colors.blueGrey),
                      decoration: InputDecoration(
                        labelText: "Mật khẩu",
                        errorText: _passIsvalid ? _passErr : null,
                        labelStyle: TextStyle(color: Colors.redAccent),
                        prefixIcon: SizedBox(
                          width: 50,
                          child: Icon(Icons.lock),
                        ),
                        enabledBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(width: 1, color: Colors.redAccent)),
                        border: OutlineInputBorder(),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                  padding: EdgeInsets.all(10),
                  child: Stack(
                    alignment: AlignmentDirectional.centerEnd,
                    children: <Widget>[
                      TextField(
                        controller: txtConfirmPassword,
                        obscureText: !_showpass,
                        style: TextStyle(color: Colors.blueGrey),
                        decoration: InputDecoration(
                          labelText: "Xác nhận mật khẩu",
                          errorText:
                              _confirmPassIsvalid ? _confirmPassErr : null,
                          labelStyle: TextStyle(color: Colors.redAccent),
                          prefixIcon: SizedBox(
                            width: 50,
                            child: Icon(Icons.lock),
                          ),
                          enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  width: 1, color: Colors.redAccent)),
                          border: OutlineInputBorder(),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.fromLTRB(0, 0, 15, 0),
                        child: GestureDetector(
                            onTap: onToppleShowPass,
                            child: _showpass
                                ? Icon(Icons.visibility,
                                    color: Colors.redAccent)
                                : Icon(Icons.visibility_off,
                                    color: Colors.redAccent)),
                      ),
                    ],
                  )),
              Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
                Padding(
                  padding: EdgeInsets.only(top: 20),
                  child: ElevatedButton(
                    style: ButtonStyle(
                        backgroundColor: MaterialStatePropertyAll<Color>(
                            const Color.fromARGB(255, 27, 247, 228)
                                .withOpacity(0.8)),
                        shape: MaterialStateProperty.all(RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30.0)))),
                    onPressed: checkregister,
                    child: const Padding(
                      padding: EdgeInsets.all(10),
                      child: Text('Đăng ký',
                          style: TextStyle(color: Colors.black)),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 20),
                  child: ElevatedButton(
                    style: ButtonStyle(
                        backgroundColor: MaterialStatePropertyAll<Color>(
                            const Color.fromARGB(255, 27, 247, 228)
                                .withOpacity(0.8)),
                        shape: MaterialStateProperty.all(RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30.0)))),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: const Padding(
                      padding: EdgeInsets.all(10),
                      child:
                          Text('Thoát', style: TextStyle(color: Colors.black)),
                    ),
                  ),
                ),
              ]),
            ],
          ),
        ),
      ),
    );
  }

  void onToppleShowPass() {
    setState(() {
      _showpass = !_showpass;
    });
  }

  Future checkregister() async {
    setState(() {
      if (txtEmail.text.length < 11 || !txtEmail.text.contains("@gmail.com")) {
        _emailIsvalid = true;
        txtEmail.clear();
      } else {
        _emailIsvalid = false;
      }
      if (txtPassword.text.length < 6) {
        _passIsvalid = true;
      } else {
        _passIsvalid = false;
      }
      if (txtConfirmPassword.text != txtPassword.text) {
        _confirmPassIsvalid = true;
      } else {
        _confirmPassIsvalid = false;
      }

      if (txtNumberPhone.text.length != 10) {
        _phoneIsvalid = true;
        txtNumberPhone.clear();
      } else {
        _phoneIsvalid = false;
      }
    });
    if (!_emailIsvalid &&
        !_passIsvalid &&
        !_confirmPassIsvalid &&
        !_phoneIsvalid) {
      try {
        await FirebaseAuth.instance.createUserWithEmailAndPassword(
            email: txtEmail.text, password: txtPassword.text);
        var data = FirebaseFirestore.instance.collection("users").doc();
        var id = data.id;
        var a = Usera(
          id: id,
          email: txtEmail.text.trim(),
          phone: txtNumberPhone.text.trim(),
          name: " ",
          avatar: " ",
          password: txtPassword.text.trim(),
          coin: "0",
          highscore: "0",
          lv: "1",
        );
        await data.set(a.toJson());

        Navigator.pop(context, 'Bạn Đăng Ký Thành Công !');
      } on FirebaseAuthException catch (e) {
        final snackBar = SnackBar(content: Text('Email đã được đăng ký'));
        ScaffoldMessenger.of(context).showSnackBar(snackBar);
      }
    }
  }
}
