import 'package:flutter/material.dart';

class CardPage extends StatelessWidget {
  CardPage({
    Key? key,
    required this.name,
    required this.kesip,
    required this.number,
    required this.email,
  }) : super(key: key);

  String name;
  String kesip;
  String number;
  String email;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff00695c),
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.white,
        title: const Text(
          'Маалымат',
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/12.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ClipOval(
                child: SizedBox.fromSize(
                  size: const Size.fromRadius(50),
                  child: Image.asset(
                    'assets/images/2001.png',
                    height: 30,
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                name,
                style: const TextStyle(
                  color: Color.fromARGB(255, 149, 12, 147),
                  fontSize: 30,
                  fontFamily: 'Ultra',
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                '$kesip DEVELOPER',
                style: const TextStyle(
                  color: Color.fromARGB(255, 149, 12, 147),
                  fontSize: 18,
                ),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 180,
                ),
                child: Divider(
                  color: Color.fromARGB(255, 204, 14, 191),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                color: Color.fromARGB(255, 69, 10, 220),
                height: 45,
                child: Row(
                  children: [
                    const SizedBox(width: 15),
                    const Icon(
                      Icons.phone,
                      color: Color.fromARGB(255, 231, 7, 152),
                    ),
                    const SizedBox(width: 30),
                    Text(
                      number,
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(width: 15),
              const SizedBox(
                height: 10,
              ),
              Container(
                color: Color.fromARGB(255, 69, 10, 220),
                height: 45,
                child: Row(
                  children: [
                    const SizedBox(width: 15),
                    const Icon(
                      Icons.email,
                      color: Color.fromARGB(255, 231, 7, 152),
                    ),
                    const SizedBox(width: 15),
                    const SizedBox(width: 30),
                    Text(
                      email,
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 20,
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
