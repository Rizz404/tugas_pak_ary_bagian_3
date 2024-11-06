import 'package:flutter/material.dart';
import 'package:latihan_pak_ary_bagian_3/components/custom_bottom_bar.dart';

class Tugas33 extends StatelessWidget {
  const Tugas33({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            title: const Text('Latihan 3.3'),
            bottom: const TabBar(tabs: [
              Tab(
                text: 'For you',
              ),
              Tab(
                text: 'Following',
              ),
            ]),
          ),
          bottomNavigationBar: const CustomBottomBar(),
          body: TabBarView(children: [
            ListView.builder(
                itemCount: 7,
                itemBuilder: (context, index) {
                  return ListTile(
                    leading: const Icon(Icons.flutter_dash),
                    title: Text('Data ke ${index + 1}'),
                  );
                }),
            ListView.builder(
                itemCount: 7,
                itemBuilder: (context, index) {
                  return ClipRRect(
                    child: Image.network(
                        'https://i.pinimg.com/236x/9c/c0/38/9cc0388eb7fd5d1440423247ef522c81.jpg'),
                  );
                }),
          ]),
        ));
  }
}
