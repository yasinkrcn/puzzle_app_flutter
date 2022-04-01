import 'package:flutter/material.dart';

class ResetButton extends StatelessWidget {
  final void Function() reset;
  String text;

  ResetButton(this.reset, this.text);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: reset,
      child: SizedBox(
        width: 130,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const Text(
              "Tekrar Dene",
              style: TextStyle(color: Colors.blue, fontSize: 18),
            ),
            Icon(
              Icons.refresh,
              color: Colors.blue,
            )
          ],
        ),
      ),
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all(Colors.white),
      ),
    );
  }
}
