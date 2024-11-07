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
                icon: Icon(Icons.people),
                text: 'For you',
              ),
              Tab(
                icon: Icon(Icons.favorite),
                text: 'Following',
              ),
            ]),
          ),
          bottomNavigationBar: const CustomBottomBar(
            currentIndex: 2,
          ),
          body: TabBarView(children: [
            ListView.builder(
                itemCount: 7,
                itemBuilder: (context, index) {
                  return Container(
                    padding: const EdgeInsets.symmetric(horizontal: 8),
                    margin: const EdgeInsets.symmetric(
                        vertical: 4), // Jarak antar tile
                    decoration: const BoxDecoration(
                      border: Border.symmetric(
                          horizontal: BorderSide(
                        color: Colors.blue,
                      )), // Warna dan ketebalan border
                      // Sudut border melengkung
                    ),
                    child: ListTile(
                      leading: const FlutterLogo(),
                      title: Text('Data ke ${index + 1}'),
                    ),
                  );
                }),
            Padding(
              padding: const EdgeInsets.all(16),
              child: GridView.builder(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      crossAxisSpacing: 8,
                      mainAxisSpacing: 8),
                  itemCount: 8,
                  itemBuilder: (context, index) {
                    return ClipRRect(
                      child: Image.network(
                        'https://i.pinimg.com/originals/e6/c4/02/e6c40279ab35f897241545139d97afe2.gif',
                        fit: BoxFit.cover,
                      ),
                    );
                  }),
            ),
          ]),
        ));
  }
}
