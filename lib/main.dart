import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          centerTitle: false,
          title: Text("금호동3가",
            style: TextStyle(color: Colors.black, fontWeight: FontWeight.w900),
          ),
          actions: const[
            Icon(
              Icons.search,
              color: Colors.black,
              size: 35,
            ),
            SizedBox(width: 16),
            Icon(
              Icons.menu,
              color: Colors.black,
              size: 35,
            ),
            SizedBox(width: 16),
            Icon(
              Icons.add_alert_outlined,
              color: Colors.black,
              size: 35,
            ),
            SizedBox(width: 16)
          ],
        ),
        body: Container(
          width: double.infinity, height: 200,
          margin: EdgeInsets.all(10),
          padding: EdgeInsets.all(10),
          child: Row(
            children: [
              Container(
                width: 200,
                height: 200,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('../assets/camera.png'),
                  ),
                ),
              ),
              SizedBox(width: 10),
              Container(
                width: 320,
                height: 200,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      width: 300,
                      height: 70,
                      child: Text("캐논 DSLR 100D (단렌즈, 충전기 16기가SD포함",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Container(
                      width: 300,
                      height: 25,
                      child: Text("성동구 행당동 끌올 10분 전",
                        style: TextStyle(
                          fontSize: 15,
                          color: Colors.grey,
                        ),
                      ),
                    ),
                    Container(
                      width: 300,
                      height: 25,
                      child: Text("210,000원",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Container(
                      width: 300,
                      height: 25,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          IconButton(
                            icon: Icon(Icons.favorite_border_outlined),
                            onPressed: (){},
                          ),
                          Container(
                            width: 30,
                            height: 30,
                            padding: EdgeInsets.fromLTRB(0,5,0,0),
                            child: Text('4',
                              style: TextStyle(
                                fontSize: 15,
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
