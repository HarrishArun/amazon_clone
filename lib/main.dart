import 'package:amazon_clone/shopping_screen.dart';
import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(myapp());
}

class myapp extends StatelessWidget {
  const myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: homescreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class homescreen extends StatelessWidget {
  const homescreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Container(
          decoration: BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.circular(5)),
          height: 30,
          width: double.infinity,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(5, 0, 5, 0),
                child: Row(
                  children: [
                    Icon(
                      Icons.search_rounded,
                      color: Colors.grey,
                    ),
                    Text(
                      "Search Amazon.in",
                      style: TextStyle(color: Colors.grey, fontSize: 15),
                    )
                  ],
                ),
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 0, 5, 0),
                    child: Icon(
                      Icons.qr_code_scanner_rounded,
                      color: Colors.grey,
                    ),
                  ),
                  Icon(
                    Icons.mic_rounded,
                    color: Colors.grey,
                  )
                ],
              )
            ],
          ),
        ),
        backgroundColor: Colors.cyanAccent,
      ),
      body: GestureDetector(
        onTap: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => shopscreen()));
        },
        child: Container(
          child: Column(
            children: [
              Container(
                height: 40,
                width: double.infinity,
                color: Colors.cyanAccent,
                child: Row(
                  children: [
                    Icon(Icons.location_pin),
                    Text("Deliver to Bannerjii"),
                    Icon(Icons.arrow_drop_down)
                  ],
                ),
              ),
              Container(
                height: 100,
                width: double.infinity,
                color: Colors.blue,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    Container(
                      color: Colors.white,
                      height: 25,
                      width: 100,
                      child: Text("dada"),
                    ),
                    Container(
                      color: Colors.white,
                      height: 25,
                      width: 100,
                      child: Text("dada"),
                    ),
                    Container(
                      color: Colors.white,
                      height: 25,
                      width: 100,
                      child: Column(
                        children: [
                          Image.asset(
                            "ds",
                            height: 20,
                          ),
                          Text("dada")
                        ],
                      ),
                    ),
                    Container(
                      color: Colors.white,
                      height: 25,
                      width: 100,
                      child: Text("dada"),
                    )
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
