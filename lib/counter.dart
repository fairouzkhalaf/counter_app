import 'package:flutter/material.dart';

class Counter extends StatefulWidget {
  const Counter({Key? key}) : super(key: key);

  @override
  State<Counter> createState() => _CounterState();
}

class _CounterState extends State<Counter> {
  int teamApoints = 0;
  int teamBpoints = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber[900],
        title: const Text("Points Counter"),
      ),
      body: Column(
        children: [
          const SizedBox(
            height: 25,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                children: [
                  const SizedBox(
                    height: 20,
                  ),
                  const Text(
                    "Team A",
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    '$teamApoints',
                    style: const TextStyle(
                      fontSize: 130,
                    ),
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      minimumSize: const Size(110, 50),
                      backgroundColor: Colors.amber[900],
                    ),
                    onPressed: () {
                      setState(() {
                        teamApoints++;
                      });
                    },
                    child: const Text(
                      "Add 1 point",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      minimumSize: const Size(110, 50),
                      backgroundColor: Colors.amber[900],
                    ),
                    onPressed: () {
                      setState(() {
                        teamApoints += 2;
                      });
                    },
                    child: const Text(
                      "Add 2 points",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      minimumSize: const Size(110, 50),
                      backgroundColor: Colors.amber[900],
                    ),
                    onPressed: () {
                      setState(() {
                        teamApoints += 3;
                      });
                    },
                    child: const Text(
                      "Add 3 points",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 500,
                child: VerticalDivider(
                  color: Colors.grey,
                  thickness: 4,
                ),
              ),
              Column(
                children: [
                  const SizedBox(
                    height: 20,
                  ),
                  const Text(
                    "Team B",
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "$teamBpoints",
                    style: const TextStyle(
                      fontSize: 130,
                    ),
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      minimumSize: const Size(110, 50),
                      backgroundColor: Colors.amber[900],
                    ),
                    onPressed: () {
                      setState(() {
                        teamBpoints++;
                      });
                    },
                    child: const Text(
                      "Add 1 point",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      minimumSize: const Size(110, 50),
                      backgroundColor: Colors.amber[900],
                    ),
                    onPressed: () {
                      setState(() {
                        teamBpoints += 2;
                      });
                    },
                    child: const Text(
                      "Add 2 points",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      minimumSize: const Size(110, 50),
                      backgroundColor: Colors.amber[900],
                    ),
                    onPressed: () {
                      setState(() {
                        teamBpoints += 3;
                      });
                    },
                    child: const Text(
                      "Add 3 points",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
            ],
          ),
          const SizedBox(
            height: 60,
          ),
          Center(
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                minimumSize: const Size(110, 50),
                backgroundColor: Colors.amber[900],
              ),
              onPressed: () {},
              child: const Text(
                "Result",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
