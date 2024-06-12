import 'package:flutter/material.dart';

class OoruButton extends StatelessWidget {
  final String text;

  const OoruButton({required this.text});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: (MediaQuery.of(context).size.width - 62) / 2, // Ширина кнопки
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          foregroundColor: Colors.blue[20],
          backgroundColor: Colors.white, // Цвет текста кнопки
          padding: const EdgeInsets.symmetric(vertical: 15),
          textStyle: const TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
        onPressed: () {
          // Добавьте действие при нажатии на кнопку, если необходимо
        },
        child: Text(text),
      ),
    );
  }
}
