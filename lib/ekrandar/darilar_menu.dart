import 'package:flutter/material.dart';

// ignore: camel_case_types
class Darilar_Menu extends StatelessWidget {
  const Darilar_Menu({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 10,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.all(5.0),
          child: Card(
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Надпись над Item $index',
                    style: const TextStyle(
                        fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                      height: 8), // Отступ между текстом и элементом списка
                  ListTile(
                    title: Text('Item $index'),
                    trailing: ElevatedButton(
                      onPressed: () {
                        // Действие по нажатию кнопки
                      },
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius:
                              BorderRadius.circular(20), // Радиус кнопки
                        ),
                      ),
                      child: const Text('Заказать'),
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
