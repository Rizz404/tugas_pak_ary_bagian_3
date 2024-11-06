import 'package:flutter/material.dart';

class Tugas32 extends StatefulWidget {
  const Tugas32({super.key});

  @override
  State<Tugas32> createState() => _Tugas32State();
}

class _Tugas32State extends State<Tugas32> {
  List<String> images = [
    "https://i.pinimg.com/236x/9c/c0/38/9cc0388eb7fd5d1440423247ef522c81.jpg",
    "https://i.pinimg.com/236x/9c/c0/38/9cc0388eb7fd5d1440423247ef522c81.jpg",
    "https://i.pinimg.com/236x/9c/c0/38/9cc0388eb7fd5d1440423247ef522c81.jpg",
    "https://i.pinimg.com/236x/9c/c0/38/9cc0388eb7fd5d1440423247ef522c81.jpg",
    "https://i.pinimg.com/236x/9c/c0/38/9cc0388eb7fd5d1440423247ef522c81.jpg",
    "https://i.pinimg.com/236x/9c/c0/38/9cc0388eb7fd5d1440423247ef522c81.jpg",
    "https://i.pinimg.com/236x/9c/c0/38/9cc0388eb7fd5d1440423247ef522c81.jpg",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text('Peduli lindungi'),
      ),
      body: Padding(
          padding: const EdgeInsets.only(
            top: 8,
            bottom: 16,
            right: 16,
            left: 16,
          ),
          child: Column(
            children: [
              Column(
                children: [
                  Container(
                    padding: const EdgeInsets.all(16),
                    decoration: const BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(12),
                        topRight: Radius.circular(12),
                      ),
                    ),
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Entering a public space?',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(height: 4),
                            Text(
                              'Stay alert to stay safe',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 12,
                              ),
                            ),
                          ],
                        ),
                        Icon(Icons.qr_code_scanner,
                            color: Colors.white, size: 36)
                      ],
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      color: Colors.white, // warna putih untuk membedakan
                      borderRadius: const BorderRadius.only(
                        bottomLeft: Radius.circular(12),
                        bottomRight: Radius.circular(12),
                      ),
                      border: Border.all(
                          color: Colors.grey), // border pada container bawah
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        TextButton(
                          onPressed: () {},
                          child: const Text('Check-In Preference'),
                        ),
                        ElevatedButton(
                          onPressed: () {},
                          child: const Text('Check-In'),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              // * Masalah overflow literally cuma expanded solusinya
              Expanded(
                child: GridView.builder(
                    itemCount: images.length,
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3,
                      crossAxisSpacing: 16,
                      mainAxisSpacing: 16,
                      childAspectRatio: 1,
                    ),
                    itemBuilder: (context, index) {
                      return Column(
                        children: [
                          Expanded(
                            child: Container(
                              padding: const EdgeInsets.all(20),
                              decoration: BoxDecoration(
                                color: Colors.yellow,
                                borderRadius:
                                    BorderRadiusDirectional.circular(24),
                              ),
                              child: Image.network(
                                images[index],
                                fit: BoxFit.cover,
                                width: 48,
                                height: 48,
                              ),
                            ),
                          ),
                          const SizedBox(height: 8),
                          const Text(
                            'Menu Title',
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w500,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ],
                      );
                    }),
              ),
            ],
          )),
    );
  }
}
