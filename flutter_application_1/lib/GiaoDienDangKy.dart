import 'package:flutter/material.dart';



class GiaoDienDangKy extends StatefulWidget {
  const GiaoDienDangKy({super.key, required this.title});
  final String title;

  @override
  State<GiaoDienDangKy> createState() => _GiaoDienDangKy();
}

class _GiaoDienDangKy extends State<GiaoDienDangKy> {
  var username = "";
  var mail = "";
  var numberphone = "";
  var password = "";
  var confirmpass = "";
  var dulieu = "";
  TextEditingController txt_username = TextEditingController();
  TextEditingController txt_password = TextEditingController();
  void _dangKy() {
    setState(() {
      dulieu = "đăng ký thành công";
    });
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
                  width: MediaQuery.of(context).size.width / 3.0),
              const Padding(
                padding: EdgeInsets.fromLTRB(0, 30, 0, 6),
                child: Text("Đăng ký",
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.redAccent)),
              ),
              // const Padding(
              //   padding: EdgeInsets.all(10),
              //   child: TextField(
              //       style: TextStyle(color: Colors.blueGrey),
              //       decoration: InputDecoration(
              //           labelText: "Tên đăng nhập",
              //           labelStyle: TextStyle(color: Colors.redAccent),
              //           prefixIcon: SizedBox(
              //             width: 50,
              //             child: Icon(Icons.people),
              //           ),
              //           enabledBorder: OutlineInputBorder(
              //               borderSide:
              //                   BorderSide(width: 1, color: Colors.redAccent)),
              //           border: OutlineInputBorder())),
              // ),
              const Padding(
                  padding: EdgeInsets.all(10),
                  child: TextField(
                      style: TextStyle(color: Colors.blueGrey),
                      decoration: InputDecoration(
                        labelText: "Mail",
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
              const Padding(
                  padding: EdgeInsets.all(10),
                  child: TextField(
                      style: TextStyle(color: Colors.blueGrey),
                      decoration: InputDecoration(
                        labelText: "Số điện thoại",
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
              const Padding(
                  padding: EdgeInsets.all(10),
                  child: TextField(
                      style: TextStyle(color: Colors.blueGrey),
                      decoration: InputDecoration(
                        labelText: "Mật khẩu",
                        labelStyle: TextStyle(color: Colors.redAccent),
                        prefixIcon: SizedBox(
                          width: 50,
                          child: Icon(Icons.lock),
                        ),
                        enabledBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(width: 1, color: Colors.redAccent)),
                        border: OutlineInputBorder(),
                      ))),
              const Padding(
                  padding: EdgeInsets.all(10),
                  child: TextField(
                      style: TextStyle(color: Colors.blueGrey),
                      decoration: InputDecoration(
                        labelText: "Xác nhận mật khẩu",
                        labelStyle: TextStyle(color: Colors.redAccent),
                        prefixIcon: SizedBox(
                          width: 50,
                          child: Icon(Icons.lock),
                        ),
                        enabledBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(width: 1, color: Colors.redAccent)),
                        border: OutlineInputBorder(),
                      ))),
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
                    onPressed: () => {},
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
                    onPressed:(){
                      
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
}
