import 'package:flutter/material.dart';
import 'package:latihan_pak_ary_bagian_3/components/custom_bottom_bar.dart';

class Tugas32 extends StatefulWidget {
  const Tugas32({super.key});

  @override
  State<Tugas32> createState() => _Tugas32State();
}

class _Tugas32State extends State<Tugas32> {
  List<Map<String, dynamic>> items = [
    {
      'text': "COVID-19 Vaccine",
      'background': Colors.yellow[700], // Sesuaikan warna lebih cerah
      'logo': "assets/images/id-card.png"
    },
    {
      'text': "Covid-19 Test Results",
      'background': Colors.red[600],
      'logo': "assets/images/result.png"
    },
    {
      'text': "EHAC",
      'background': Colors.green[500],
      'logo': "assets/images/shield.png"
    },
    {
      'text': "Travel Regulations",
      'background': Colors.green[500],
      'logo': "assets/images/travel-bag.png"
    },
    {
      'text': "Telemedicine",
      'background': Colors.yellow[700],
      'logo': "assets/images/stetoscope.png"
    },
    {
      'text': "Healthcare Facility",
      'background': Colors.green[500],
      'logo': "assets/images/hospital.png"
    },
    {
      'text': "COVID-19 Statistic",
      'background': Colors.red[600],
      'logo': "assets/images/analytics.png"
    },
    {
      'text': "Find Hospital Bed",
      'background': Colors.yellow[700],
      'logo': "assets/images/hospital-bed.png"
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text(
          'Peduli lindungi',
          style: TextStyle(color: Colors.white),
        ),
      ),
      bottomNavigationBar: const CustomBottomBar(
        currentIndex: 1,
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
                      Icon(Icons.qr_code_scanner, color: Colors.white, size: 36)
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
                  itemCount: items.length,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                    crossAxisSpacing: 24,
                    mainAxisSpacing: 24,
                    childAspectRatio: 0.9,
                  ),
                  itemBuilder: (context, index) {
                    Map<String, dynamic> item = items[index];

                    return Column(
                      children: [
                        Expanded(
                          child: Container(
                            padding: const EdgeInsets.all(20),
                            decoration: BoxDecoration(
                              color: item['background'],
                              borderRadius:
                                  BorderRadiusDirectional.circular(16),
                            ),
                            child: Image.asset(
                              item['logo'],
                              fit: BoxFit.cover,
                              width: 48,
                              height: 48,
                            ),
                          ),
                        ),
                        const SizedBox(height: 8),
                        Text(
                          item['text'],
                          style: const TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                          ),
                          textAlign: TextAlign.center,
                          overflow: TextOverflow.ellipsis,
                          softWrap: true,
                        ),
                      ],
                    );
                  }),
            ),
          ],
        ),
      ),
    );
  }
}
