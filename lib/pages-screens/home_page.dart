import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  final int days = 30;
  final String name = "Ahmed";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Catalog App"),
      ),
      body: Center(
        child: Container(
          margin: const EdgeInsets.only(left: 25, right: 25),
          child: Text(
            "Welcome $name To $days Days Of Flutter...!!!",
            style: const TextStyle(
              color: Colors.blue,
              fontSize: 25,
              fontWeight: FontWeight.w900,
            ),
            textScaleFactor: 2.0,
          ),
        ),
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            const Padding(padding: EdgeInsets.only(top: 150, left: 5)),
            Row(
              children: const [
                Align(
                  alignment: Alignment.topCenter,
                  child: Padding(
                    padding: EdgeInsets.only(left: 20),
                    child: Text(
                      "1] Students Name.",
                      style: TextStyle(
                        color: Colors.blue,
                        fontSize: 25,
                      ),
                      textScaleFactor: 1.5,
                    ),
                  ),
                ),
              ],
            ),
            const Padding(padding: EdgeInsets.only(top: 30, left: 5)),
            Row(
              children: const [
                Padding(
                  padding: EdgeInsets.only(left: 20),
                  child: Text(
                    "2] Students Marks.",
                    style: TextStyle(
                      color: Colors.blue,
                      fontSize: 25,
                    ),
                    textScaleFactor: 2,
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
