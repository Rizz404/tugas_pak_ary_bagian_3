import 'package:flutter/material.dart';
import 'package:latihan_pak_ary_bagian_3/components/custom_bottom_bar.dart';

class Tugas31 extends StatelessWidget {
  const Tugas31({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: const Text(
          'Gojek',
          style: TextStyle(
              fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
        ),
      ),
      bottomNavigationBar: const CustomBottomBar(
        currentIndex: 0,
      ),
      body: Padding(
          padding: const EdgeInsets.only(
            top: 16,
            left: 24,
            right: 24,
          ),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Your favorites',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                  OutlinedButton(
                    onPressed: () {},
                    style: const ButtonStyle(),
                    child: const Text('Edit'),
                  )
                ],
              ),
              const SizedBox(height: 16),
              Expanded(
                child: GridView(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 4,
                      crossAxisSpacing: 16,
                      mainAxisSpacing: 16,
                      childAspectRatio: 0.8),
                  children: [
                    _gojekMenu(
                      Colors.green.shade50,
                      Icons.motorcycle,
                      Colors.green,
                      'GoRide',
                    ),
                    _gojekMenu(
                      Colors.green.shade50,
                      Icons.directions_car,
                      Colors.green,
                      'GoCar',
                    ),
                    _gojekMenu(
                      Colors.red.shade50,
                      Icons.restaurant,
                      Colors.red,
                      'GoFood',
                    ),
                    _gojekMenu(
                      Colors.green.shade50,
                      Icons.local_shipping,
                      Colors.green,
                      'GoSend',
                    ),
                    _gojekMenu(
                      Colors.red.shade50,
                      Icons.shopping_basket,
                      Colors.red,
                      'GoMart',
                    ),
                    _gojekMenu(
                      Colors.blue.shade50,
                      Icons.receipt_long,
                      Colors.blue,
                      'GoTagihan',
                    ),
                    _gojekMenu(
                      Colors.green.shade50,
                      Icons.directions_bus,
                      Colors.green,
                      'GoTransit',
                    ),
                    _gojekMenu(
                      Colors.grey.shade100,
                      Icons.more_horiz,
                      Colors.black,
                      'Lainnya',
                    ),
                  ],
                ),
              ),
            ],
          )),
    );
  }

  Widget _gojekMenu(
      Color bgColor, IconData icon, Color iconColor, String text) {
    return Column(
      children: [
        Container(
            padding: const EdgeInsets.all(12),
            decoration: BoxDecoration(
              color: bgColor,
              borderRadius: BorderRadiusDirectional.circular(12),
            ),
            child: Icon(
              icon,
              size: 32,
              color: iconColor,
            )),
        const SizedBox(height: 8),
        Text(
          text,
          style: const TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.w500,
          ),
          textAlign: TextAlign.center,
        )
      ],
    );
  }
}
