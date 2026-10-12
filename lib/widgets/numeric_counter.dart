import 'package:flutter/material.dart';

class NumericCounter extends StatefulWidget {
  const NumericCounter({super.key});

  @override
  State<NumericCounter> createState() => _NumericCounterState();
}

class _NumericCounterState extends State<NumericCounter> {

  int cantidad = 0;

  void incrementar() {
    setState(() {
      cantidad++;
    });
  }

  void disminuir() {
    setState(() {
      if (cantidad > 0) {
        cantidad--;
      }
    });
  }

  @override
  Widget build(BuildContext context) {

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [

        const Text(
          "Cantidad de viajeros",
          style: TextStyle(
            fontSize: 24,
          ),
        ),

        const SizedBox(height: 20),

        Text(
          "$cantidad",
          style: const TextStyle(
            fontSize: 40,
            fontWeight: FontWeight.bold,
          ),
        ),

        const SizedBox(height: 20),

        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            ElevatedButton(
              onPressed: disminuir,
              child: const Text("-"),
            ),

            const SizedBox(width: 20),

            ElevatedButton(
              onPressed: incrementar,
              child: const Text("+"),
            ),
          ],
        )
      ],
    );
  }
}
