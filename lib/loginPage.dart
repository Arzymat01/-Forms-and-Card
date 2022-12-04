import 'package:flutter/material.dart';

import 'cardPage.dart';

class Loginpage extends StatefulWidget {
  const Loginpage({super.key});

  @override
  State<Loginpage> createState() => _LoginpageState();
}

class _LoginpageState extends State<Loginpage> {
  String name = '';
  String kesip = '';
  String number = '';
  String email = '';
  String password = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Center(
          child: Text(
            'Катталуу Баракчасы',
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
      backgroundColor: Colors.white,
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/12.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(30.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(
                onChanged: (String value) {
                  name = value;
                },
                decoration: InputDecoration(
                  labelText: 'Атынызды жазыныз:',
                  enabledBorder: OutlineInputBorder(
                    borderSide: const BorderSide(
                        width: 6, color: Color.fromARGB(255, 228, 47, 140)),
                    borderRadius: BorderRadius.circular(25),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(width: 6, color: Colors.black),
                    borderRadius: BorderRadius.circular(25),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              TextField(
                onChanged: (String value) {
                  kesip = value;
                },
                decoration: InputDecoration(
                  labelText: 'Кесипбинизди жазыныз:',
                  enabledBorder: OutlineInputBorder(
                    borderSide: const BorderSide(
                        width: 6, color: Color.fromARGB(255, 174, 2, 91)),
                    borderRadius: BorderRadius.circular(25),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                        width: 6, color: Color.fromARGB(255, 24, 24, 24)),
                    borderRadius: BorderRadius.circular(25),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              TextField(
                onChanged: (String value) {
                  number = value;
                },
                decoration: InputDecoration(
                  labelText: 'Номеринизди жазыныз:',
                  enabledBorder: OutlineInputBorder(
                    borderSide: const BorderSide(
                        width: 6, color: Color.fromARGB(255, 174, 2, 91)),
                    borderRadius: BorderRadius.circular(25),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(width: 6, color: Colors.black),
                    borderRadius: BorderRadius.circular(25),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              TextField(
                onChanged: (String value) {
                  email = value;
                },
                decoration: InputDecoration(
                  labelText: 'Email жазыныз:',
                  enabledBorder: OutlineInputBorder(
                    borderSide: const BorderSide(
                        width: 6, color: Color.fromARGB(255, 174, 2, 91)),
                    borderRadius: BorderRadius.circular(25),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(width: 6, color: Colors.black),
                    borderRadius: BorderRadius.circular(25),
                  ),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              const SizedBox(
                height: 30,
              ),
              const SizedBox(
                height: 25,
              ),
              SizedBox(
                height: 55,
                width: 300,
                child: ElevatedButton(
                  onPressed: () {
                    if (email == '' && password == '') {
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                          content: Text(
                            'Логин жана парол жазыныз',
                            style: TextStyle(color: Colors.red),
                          ),
                        ),
                      );
                    } else {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => CardPage(
                              name: name,
                              kesip: kesip,
                              number: number,
                              email: email),
                        ),
                      );
                    }
                  },
                  style: ElevatedButton.styleFrom(
                    padding:
                        EdgeInsets.symmetric(horizontal: 40.0, vertical: 20.0),
                    primary: Color.fromARGB(255, 188, 3, 148),
                    shape: StadiumBorder(),
                  ),
                  child: Text(
                    'Жөнөтуу',
                    style: TextStyle(fontSize: 18, color: Colors.white),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
