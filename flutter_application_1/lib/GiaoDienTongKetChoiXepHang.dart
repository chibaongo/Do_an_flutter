import 'package:flutter/material.dart';
import 'package:flutter_application_1/TimPhong.dart';
import 'package:flutter_application_1/giaodienchinh.dart';
import 'Components/itemTongKetChoiXepHang.dart';


class TongKetChoiXepHang extends StatefulWidget {
  const TongKetChoiXepHang({super.key, required this.title});

  final String title;

  @override
  State<TongKetChoiXepHang> createState() => _TongKetChoiXepHang();
}

class _TongKetChoiXepHang extends State<TongKetChoiXepHang> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.fromLTRB(30, 20, 30, 20),
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/images/nen/nen.jpg"), fit: BoxFit.cover),
        ),
        child: Container(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Image.asset(
                "assets/images/rank/ranking.png",
                width: 150,
              ),
              const Text(
                'Tổng kết',
                style: TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                    color: Colors.redAccent),
              ),
              Container(
                margin: const EdgeInsets.fromLTRB(5, 0, 0, 5),
                child:
                    Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                  Image.asset('assets/images/rank/rank kcc.png', width: 100),
                  const Text(
                    '+12',
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.redAccent),
                  )
                ]),
              ),
              const Padding(padding: EdgeInsets.all(5)),
              Container(
                padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                decoration: BoxDecoration(
                    border: Border.all(width: 1, color: Colors.red),
                    borderRadius: BorderRadius.circular(20)),
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height / 3,
                child: ListView.builder(
                  itemCount: duLieuTongKetXepHang.lstDuLieuTongKetCaNhan.length,
                  itemBuilder: ((BuildContext context, int index) {
                    return inforTongKetXepHang(
                        dl: duLieuTongKetXepHang.lstDuLieuTongKetCaNhan[index]);
                  }),
                ),
              ),
              const Padding(padding: EdgeInsets.all(20)),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                    style: ButtonStyle(
                        backgroundColor: MaterialStatePropertyAll<Color>(
                            const Color.fromARGB(255, 27, 247, 228)
                                .withOpacity(0.8)),
                        shape: MaterialStateProperty.all(RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30.0)))),
                    onPressed: ()  {

                          Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                const TimPhong(title: "")));
                    },
                    child: const Padding(
                      padding: EdgeInsets.all(10),
                      child: Text('Chơi tiếp',
                          style: TextStyle(color: Colors.black)),
                    ),
                  ),
                  ElevatedButton(
                    style: ButtonStyle(
                        backgroundColor: MaterialStatePropertyAll<Color>(
                            const Color.fromARGB(255, 27, 247, 228)
                                .withOpacity(0.8)),
                        shape: MaterialStateProperty.all(RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30.0)))),
                    onPressed: () {
                        Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                const Home(title: "")));
                    },
                    child: const Padding(
                      padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
                      child:
                          Text('Home', style: TextStyle(color: Colors.black)),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
