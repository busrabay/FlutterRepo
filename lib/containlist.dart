import 'package:flutter/material.dart';
import 'package:premium_flutter/listbox.dart';

class MyBox extends StatelessWidget {
  const MyBox({super.key, required this.contain});
  final Contain contain;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      decoration: BoxDecoration(
        color: Colors.transparent,
        border: Border.all(
          color: Colors.transparent,
          width: 3,
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Text(
            contain.comment,
            style: const TextStyle(fontWeight: FontWeight.normal, fontSize: 15, color: Colors.white),
          ),
          contain.way1
              ? const Icon(
                  Icons.check_circle_outline_rounded,
                  color: Colors.purpleAccent,
                )
              : const Icon(
                  Icons.indeterminate_check_box_outlined,
                  color: Colors.blueGrey,
                ),
          contain.way2
              ? const Icon(
                  Icons.check_circle_outline_rounded,
                  color: Colors.purpleAccent,
                )
              : const Icon(
                  Icons.indeterminate_check_box_outlined,
                  color: Colors.blueGrey,
                ),
        ],
      ),
    );
  }
}
