import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text(widget.title),
      // ),
      body: Stack(
        children: <Widget>[
          Container(
            decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/images/nen.jpg'),
                    fit: BoxFit.cover)),
          ),
          Column(
             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  const CircleAvatar(
                    // backgroundColor: Colors.grey,
                    //backgroundImage: AssetImage('assets/images/cat.png'),
                    radius: 30,
                    child: Icon(Icons.add),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  const Padding(
                    padding: EdgeInsets.only(bottom: 10),
                    child: Text(
                      'Chọn ảnh đại diện ',
                      style: TextStyle(
                        color: Colors.red,
                        fontSize: 20,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                ],
              ),
              Column(            
                children: [
                  Padding(padding: EdgeInsets.all(20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    // ignore: prefer_const_literals_to_create_immutables
                    children: [
                      const CircleAvatar(
                        backgroundImage: AssetImage('assets/images/cat.png'),
                        radius: 30,
                      ),
                      const CircleAvatar(
                        backgroundImage: AssetImage('assets/images/cool.png'),
                        radius: 30,
                      ),
                      const CircleAvatar(
                        backgroundImage: AssetImage('assets/images/corgi.png'),
                        radius: 30,
                      ),
                      const CircleAvatar(
                        backgroundImage: AssetImage('assets/images/crocodile.png'),
                        radius: 30,
                      ),
                    ],
                  ),
                  ),
                  
                   Padding(padding: EdgeInsets.all(20),
                  child:Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    // ignore: prefer_const_literals_to_create_immutables
                    children: [
                      const CircleAvatar(
                        backgroundImage: AssetImage('assets/images/doberman.png'),
                        radius: 30,
                      ),
                      const CircleAvatar(
                        backgroundImage: AssetImage('assets/images/dog.png'),
                        radius: 30,
                      ),
                      const CircleAvatar(
                        backgroundImage: AssetImage('assets/images/gojo.png'),
                        radius: 30,
                      ),
                      const CircleAvatar(
                        backgroundImage: AssetImage('assets/images/goku.png'),
                        radius: 30,
                      ),
                    ],
                  ),),
                  Padding(padding: EdgeInsets.all(20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    // ignore: prefer_const_literals_to_create_immutables
                    children: [
                      const CircleAvatar(
                        backgroundImage: AssetImage('assets/images/horse.png'),
                        radius: 30,
                      ),
                      const CircleAvatar(
                        backgroundImage: AssetImage('assets/images/kingdom.png'),
                        radius: 30,
                      ),
                      const CircleAvatar(
                        backgroundImage: AssetImage('assets/images/lion.png'),
                        radius: 30,
                      ),
                      const CircleAvatar(
                        backgroundImage: AssetImage('assets/images/naruto.png'),
                        radius: 30,
                      ),
                    ],
                  ),),
                   Padding(padding: EdgeInsets.all(20),
                  child:Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    // ignore: prefer_const_literals_to_create_immutables
                    children: [
                      const CircleAvatar(
                        backgroundImage: AssetImage('assets/images/racoon.png'),
                        radius: 30,
                      ),
                      const CircleAvatar(
                        backgroundImage: AssetImage('assets/images/shark.png'),
                        radius: 30,
                      ),
                      const CircleAvatar(
                        backgroundImage: AssetImage('assets/images/tiger.png'),
                        radius: 30,
                      ),
                      const CircleAvatar(
                        backgroundImage: AssetImage('assets/images/tiger1.png'),
                        radius: 30,
                      ),
                    ],
                  ),),
                ],
                
              ),
               Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 100),
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
                      child: Text('Đồng ý',
                          style: TextStyle(color: Colors.black)),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 100),
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
                      child:
                          Text('Trở lại', style: TextStyle(color: Colors.black)),
                    ),
                  ),
                ),
              ]),
            ],
          ),
        ],
      ),
    );
  }
}
