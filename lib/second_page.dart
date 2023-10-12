import 'package:flutter/material.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({
    super.key,
    required this.data,
  });

  final String data;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            //gambar atas
            SizedBox(
              width: 400,
              height: 500,
              child: Image.asset(
                "assets/images/img-2.jpg",
                fit: BoxFit.cover,
              ),
            ),
            //gradien bawah
            SizedBox(
              width: 400,
              height: 1000,
              child: Container(
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment(1, -0.5),
                    end: Alignment(0, 1),
                    colors: <Color>[Color(0x00030303), Color(0xff030303)],
                    stops: <double>[0, 0.198],
                  ),
                ),
              ),
            ),
            //gambar 1
            Positioned(
              left: 79,
              top: 259,
              child: Align(
                child: SizedBox(
                  width: 56,
                  height: 59,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.asset(
                      "assets/images/img-3.jpg",
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
            ),
            //gambar 2
            Positioned(
              left: 159,
              top: 259,
              child: Align(
                child: SizedBox(
                  width: 56,
                  height: 59,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.asset(
                      "assets/images/img-4.jpg",
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
            ),
            //gambar 3
            Positioned(
              left: 239,
              top: 259,
              child: Container(
                width: 56,
                height: 59,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  image: const DecorationImage(
                      image: AssetImage(
                        "assets/images/img-5.jpg",
                      ),
                      fit: BoxFit.cover),
                ),
                child: const Center(
                  child: Text('+10',
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 16,
                        fontWeight: FontWeight.w700,
                        height: 1.5,
                        color: Color.fromARGB(255, 0, 0, 0),
                      )),
                ),
              ),
            ),
            //Text Hawai Volcano National Park
            const Positioned(
              top: 345,
              left: 40,
              right: 50,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'HAWAII VOLCANO',
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 20,
                      fontWeight: FontWeight.w700,
                      color: Colors.white,
                      letterSpacing: 2.0,
                    ),
                  ),
                  Text(
                    'NATIONAL PARK',
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 20,
                      fontWeight: FontWeight.w700,
                      color: Colors.white,
                      letterSpacing: 2.0,
                    ),
                  ),
                ],
              ),
            ),
            //bintang
            Positioned(
              left: 25,
              top: 440,
              child: SizedBox(
                width: 330,
                height: 27,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin: const EdgeInsets.fromLTRB(0, 0, 94, 1),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          SizedBox(
                            // star1
                            width: 27,
                            height: 26,
                            child: Icon(
                              Icons.star,
                              color: Colors.yellow[700],
                            ),
                          ),
                          //star2
                          SizedBox(
                            // star1
                            width: 27,
                            height: 26,
                            child: Icon(
                              Icons.star,
                              color: Colors.yellow[700],
                            ),
                          ),
                          //star3
                          SizedBox(
                            // star1
                            width: 27,
                            height: 26,
                            child: Icon(
                              Icons.star,
                              color: Colors.yellow[700],
                            ),
                          ),
                          //star4
                          SizedBox(
                            // star1
                            width: 27,
                            height: 26,
                            child: Icon(
                              Icons.star,
                              color: Colors.yellow[700],
                            ),
                          ),
                          //star5
                          SizedBox(
                            // star1
                            width: 27,
                            height: 26,
                            child: Icon(
                              Icons.star,
                              color: Colors.yellow[700],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            //profile 1
            const Positioned(
              right: 100,
              top: 445,
              child: CircleAvatar(
                radius: 10,
                backgroundImage: AssetImage("assets/images/img-6.jpg"),
              ),
            ),
            //profile 2
            const Positioned(
              right: 90,
              top: 445,
              child: CircleAvatar(
                radius: 10,
                backgroundImage: AssetImage("assets/images/img-7.jpg"),
              ),
            ),
            //profile 3
            Positioned(
              right: 80,
              top: 445,
              child: CircleAvatar(
                radius: 10,
                backgroundColor: Colors.green[600],
              ),
            ),
            //textprofile
            const Positioned(
              right: 50,
              top: 445,
              child: Text(
                '+12',
                style: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 10,
                  color: Colors.white,
                ),
              ),
            ),
            const Positioned(
              right: 40,
              top: 453,
              child: Text(
                'Friends',
                style: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 10,
                  color: Colors.white,
                ),
              ),
            ),
            //paragraf
            const Positioned(
              right: 40,
              left: 40,
              top: 500,
              child: SizedBox(
                width: 237,
                height: 150,
                child: Text(
                  "Hawai‘i Volcanoes National Park protects some of the most unique geological, biological, and cherished cultural landscapes in the world. Extending from sea level to 13,680 feet, the park encompasses the summits of two of the world's most active volcanoes - Kīlauea and Mauna Loa - and is a designated International Biosphere Reserve and UNESCO World Heritage Site.",
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 14,
                    color: Colors.white,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            //Book Now Button
            Positioned(
              left: 40,
              right: 40,
              bottom: 20,
              child: Padding(
                padding: const EdgeInsets.only(
                  top: 10.5,
                  bottom: 15.0,
                ),
                child: SizedBox(
                  width: 350,
                  height: 50,
                  child: ElevatedButton(
                    style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(
                      Colors.green[600],
                    )),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const SecondPage(
                            data: 'Hello World!',
                          ),
                        ),
                      );
                    },
                    child: const Text(
                      'BOOK NOW',
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 18,
                        fontWeight: FontWeight.w700,
                        letterSpacing: 2.0,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              top: 30,
              left: 30,
              child: IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: const Icon(Icons.arrow_back),
              ),
            ),
            Positioned(
              right: 30,
              top: 30,
              child: IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: const Icon(Icons.share),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        color: Colors.black,
        shape: const CircularNotchedRectangle(),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.home),
              color: Colors.white,
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.bookmark),
              color: Colors.white,
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.assistant_navigation),
              color: Colors.white,
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.person),
              color: Colors.white,
            ),
          ],
        ),
      ),
    );
  }
}
