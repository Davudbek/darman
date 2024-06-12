import 'dart:io';

import 'package:darman/ekrandar/darilar_menu.dart';
import 'package:darman/ekrandar/oru_menu.dart';
import 'package:flutter/material.dart';
import 'package:darman/modelder/1model.dart';

class Ekran1 extends StatefulWidget {
  const Ekran1({super.key});

  @override
  _Ekran1State createState() => _Ekran1State();
}

class _Ekran1State extends State<Ekran1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          SizedBox(
            height: 90,
            width: 90,
            child: InkWell(
              child: Image.asset(
                'assets/emb/logo.png',
                fit: BoxFit.cover,
              ),
            ),
          ),
        ],
        backgroundColor: const Color(0xFF8A8CB5),
        title: const Text(
          'Главная страница',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        elevation: 4,
        shadowColor: Colors.black54,
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              decoration: const BoxDecoration(
                color: Color(0xFF8A8CB5),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    'assets/emb/logo.png',
                    height: 80,
                    width: 210,
                    fit: BoxFit.cover,
                  ),
                  const SizedBox(height: 15),
                  const Text(
                    'Меню',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            _createDrawerItem(
              icon: Icons.home,
              text: 'Главная страница',
              onTap: () => Navigator.pop(context),
            ),
            _createDrawerItem(
              icon: Icons.local_hospital,
              text: 'Болезни',
              onTap: () => Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Oorulaaar()),
              ),
            ),
            _createDrawerItem(
              icon: Icons.medical_services,
              text: 'Лекарства',
              onTap: () => Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Darilar_Menu()),
              ),
            ),
            _createDrawerItem(
              icon: Icons.settings,
              text: 'Настройки',
              onTap: () => Navigator.pop(context),
            ),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                color: const Color(0xFFCDB7C6),
              ),
              width: double.infinity,
              height: 50,
              child: Padding(
                padding: const EdgeInsets.only(left: 16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'Поиск',
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.grey,
                      ),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.search,
                        size: 30,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                _createMainCard(
                  context,
                  'Болезни',
                  'assets/emb/bolezn.png',
                  () => Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Oorulaaar()),
                  ),
                ),
                _createMainCard(
                  context,
                  'Лекарства',
                  'assets/emb/tab.png',
                  () => Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Darilar_Menu()),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
            const Text(
              'Доступные лекарства по низким ценам',
              style: TextStyle(
                color: Color(0xFF946B66),
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 20),
            Expanded(
              child: ListView.builder(
                itemCount: continents.length, // Общее количество элементов
                itemBuilder: (context, index) {
                  final item = continents[index];
                  return Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8.0),
                    child: Container(
                      width: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: const Color(0xFFCDB7C6),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Row(
                          children: [
                            Image.asset(
                              'assets/emb/${item.image}.png',
                              width: 100,
                              height: 100,
                            ),
                            const SizedBox(width: 10),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    item.text,
                                    style: const TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  const SizedBox(height: 5),
                                  const Text(
                                    'Противопоказания',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  const SizedBox(height: 5),
                                  Text(
                                    item.procend,
                                    style: const TextStyle(
                                      color: Color(0xffbee360),
                                      fontSize: 15,
                                    ),
                                  ),
                                  const SizedBox(height: 10),
                                  const Text(
                                    'Цена:',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Color(0xffea3118),
                                      fontSize: 18,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Column(
                              children: [
                                Image.asset(
                                  'assets/emb/${item.emblemb}.png',
                                  width: 50,
                                  height: 50,
                                ),
                                const SizedBox(height: 5),
                                const Text(
                                  'Неман Фарм',
                                  style: TextStyle(
                                    fontSize: 11,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(width: 10),
                            Icon(
                              Platform.isAndroid
                                  ? Icons.favorite_border
                                  : Icons.abc,
                              size: 40,
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _createDrawerItem(
      {required IconData icon,
      required String text,
      required GestureTapCallback onTap}) {
    return ListTile(
      leading: Icon(icon),
      title: Text(
        text,
        style: const TextStyle(fontWeight: FontWeight.bold),
      ),
      onTap: onTap,
    );
  }

  Widget _createMainCard(BuildContext context, String title, String assetPath,
      VoidCallback onTap) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 150,
        height: 150,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(25),
          color: const Color(0xFFCDB7C6),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(assetPath, width: 80, height: 80),
            const SizedBox(height: 10),
            Text(
              title,
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
