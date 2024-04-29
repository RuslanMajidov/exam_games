import 'package:flutter/material.dart';

class Games extends StatelessWidget {
  const Games({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            width: double.infinity,
            padding: const EdgeInsets.only(top: 25, bottom: 8),
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomRight,
                colors: [
                  Colors.black,
                  Color.fromARGB(255, 16, 24, 34),
                  Colors.black,
                ],
              ),
            ),
            child: Stack(
              children: [
                Positioned(
                  left: -80,
                  top: 80,
                  child: Transform.rotate(
                    angle: -0.1,
                    child: Image.network(
                      'https://www.kegames.net/images/thumbs/0004640_necromunda-hired-gun-ps5-oyun_400.png',
                      width: 200,
                      height: 385,
                    ),
                  ),
                ),
                Positioned(
                  right: 98,
                  top: 55,
                  child: Transform.rotate(
                    angle: 0.2,
                    child: Image.network(
                      'https://m.media-amazon.com/images/I/81Pagnfx1DL._AC_UF1000,1000_QL80_.jpg',
                      width: 200,
                      height: 440,
                    ),
                  ),
                ),
                Positioned(
                  left: 270,
                  top: 60,
                  child: Transform.rotate(
                    angle: -0.14,
                    child: Image.network(
                      'https://retrovgames.com/wp-content/uploads/2022/01/big-300x387.jpg',
                      width: 200,
                      height: 430,
                    ),
                  ),
                ),
                const Positioned(
                  top: 50,
                  left: 100,
                  child: Row(
                    children: [
                      Text(
                        "Welcome to Gamecom 🎮",
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.white,
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                    ],
                  ),
                ),
                Positioned(
                  bottom: 110,
                  left: 50,
                  right: 50,
                  child: Column(
                    children: [
                      const Text(
                        "Begin Your",
                        style: TextStyle(
                            fontSize: 36,
                            fontWeight: FontWeight.normal,
                            color: Colors.white),
                      ),
                      const Text(
                        "Gaming Odyssey",
                        style: TextStyle(
                            fontSize: 36,
                            fontWeight: FontWeight.normal,
                            color: Colors.white),
                      ),
                      const SizedBox(height: 30),
                      ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const Games(),
                            ),
                          );
                        },
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.white,
                            foregroundColor: Colors.black,
                            padding: const EdgeInsets.fromLTRB(60, 22, 60, 22)),
                        child: const Text(
                          "Let's go!",
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.w800),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              padding: const EdgeInsets.all(20),
              color: Colors.transparent,
              child: RichText(
                textAlign: TextAlign.center,
                text: const TextSpan(
                  style: TextStyle(
                    fontSize: 14,
                  ),
                  children: [
                    TextSpan(
                      text: "By continuing you accept \n our",
                      style: TextStyle(color: Colors.grey),
                    ),
                    TextSpan(
                      text: " Terms of Service",
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
