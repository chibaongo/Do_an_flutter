import 'package:flutter/material.dart';


class ThayDoiMK extends StatefulWidget {
  const ThayDoiMK({super.key, required this.title});

  final String title;

  @override
  State<ThayDoiMK> createState() => _ThayDoiMK();
}

class _ThayDoiMK extends State<ThayDoiMK> {
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
              Padding(
                  padding: EdgeInsets.all(20.0),
                  child: Image.asset(
                    'assets/images/icon/logo1.png',
                    width: 200,
                  )),
              const Text(
                'Thay đổi mật khẩu',
                style: TextStyle(fontSize: 25, color: Colors.redAccent),
              ),
              const Padding(
                  padding: EdgeInsets.all(30),
                  child: TextField(
                      style: TextStyle(color: Colors.blueGrey),
                      decoration: InputDecoration(
                          labelText: "Nhập mật khẩu mới",
                          labelStyle: TextStyle(color: Colors.redAccent),
                          prefixIcon: SizedBox(
                            width: 50,
                            child: Icon(Icons.lock),
                          ),
                          enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  width: 1, color: Colors.redAccent)),
                          border: OutlineInputBorder(),
                          suffixIcon: Icon(Icons.remove_red_eye,
                              color: Colors.redAccent)))),
              Padding(
                padding: EdgeInsets.all(10),
                child: Column(children: [
                  Row(
                 
                    children: [
                      const Text(
                        'Mật khẩu mới phải có tối thiểu: ',
                        style: TextStyle(fontSize: 13, color: Colors.redAccent),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Text(
                        '- 8 ký tự ',
                        style: TextStyle(fontSize: 13, color: Colors.redAccent),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Text(
                        '- 1 số',
                        style: TextStyle(fontSize: 13, color: Colors.redAccent),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Text(
                        '- 1 ký tự đặc biệt ',
                        style: TextStyle(fontSize: 13, color: Colors.redAccent),
                      ),
                    ],
                  ),
                ]),
              ),
              Padding(
                padding: EdgeInsets.all(20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ElevatedButton(
                      style: ButtonStyle(
                          backgroundColor: MaterialStatePropertyAll<Color>(
                              const Color.fromARGB(255, 27, 247, 228)
                                  .withOpacity(0.8)),
                          shape: MaterialStateProperty.all(
                              RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(30.0)))),
                      onPressed: () {
                        // Navigator.push(context,
                        // MaterialPageRoute(builder: (context)=>
                        // const Home(title: '')));
                      },
                      child: const Padding(
                        padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                        child: Text(' Áp dụng'),
                      ),
                    ),
                    ElevatedButton(
                      style: ButtonStyle(
                          backgroundColor: MaterialStatePropertyAll<Color>(
                              const Color.fromARGB(255, 27, 247, 228)
                                  .withOpacity(0.8)),
                          shape: MaterialStateProperty.all(
                              RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(30.0)))),
                      onPressed: () {},
                      child: const Padding(
                        padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
                        child: Text('Hủy'),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
