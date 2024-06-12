import 'package:darman/new_wigets/oru_buton_wiget.dart';
import 'package:flutter/material.dart';

class Oorulaaar extends StatelessWidget {
  const Oorulaaar({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[400],
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 138, 140, 181),
        title: const Text('Оорулаар', style: TextStyle(color: Colors.white)),
        centerTitle: true,
        actions: [
          SizedBox(
            width: 130,
            height: 130,
            child: InkWell(
              child: Image.asset(
                'assets/emb/logo.png',
                fit: BoxFit.cover,
              ),
            ),
          ),
        ],
      ),
      body: const Padding(
        padding: EdgeInsets.symmetric(horizontal: 22, vertical: 20),
        child: OoruButtonGrid(),
      ),
    );
  }
}

class OoruButtonGrid extends StatelessWidget {
  const OoruButtonGrid({super.key});

  @override
  Widget build(BuildContext context) {
    return const Wrap(
      spacing: 10, // Расстояние между кнопками по горизонтали
      runSpacing: 10, // Расстояние между кнопками по вертикали
      children: [
        OoruButton(text: 'Баш орусу'),
        OoruButton(text: 'кол орусу'),
        OoruButton(text: 'ич орусу'),
        OoruButton(text: 'бут орусу'),
        OoruButton(text: 'тиш орусу'),
        OoruButton(text: 'коз орусу'),
        OoruButton(text: 'сыныкчы орусу'),
        OoruButton(text: 'сыныкчы орусу'),
      ],
    );
  }
}
