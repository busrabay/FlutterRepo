import 'package:flutter/material.dart';
import 'package:premium_flutter/users.dart';

class MyContainer extends StatelessWidget {
  const MyContainer({super.key, required this.user, required this.color, required this.onTap});
  final User user;
  final Color color;
  final Function() onTap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 8),
      child: GestureDetector(
        onTap: onTap,
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 300),
          width: 350,
          height: 90,
          decoration: BoxDecoration(
              color: color,
              border: Border.all(
                color: const Color(0xff1C1C1C),
                width: 3,
              ),
              borderRadius: BorderRadius.circular(15)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(color: Colors.white, width: 2),
                    shape: BoxShape.circle,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8),
                    child: Text(
                      user.emoji,
                      style: const TextStyle(
                        fontSize: 25,
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      user.month,
                      style: const TextStyle(fontWeight: FontWeight.w400, fontSize: 17, color: Colors.white),
                    ),
                    const SizedBox(
                      height: 7,
                    ),
                    Text(
                      user.value,
                      style: const TextStyle(fontWeight: FontWeight.w400, fontSize: 10, color: Colors.white),
                    )
                  ],
                ),
              ),
              const SizedBox(
                width: 80,
              ),
              Flexible(
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 20),
                  child: Column(
                    children: [
                      Text(
                        user.price.toString(),
                        style: const TextStyle(fontWeight: FontWeight.w700, fontSize: 15, color: Colors.white),
                      ),
                      const SizedBox(
                        height: 6,
                      ),
                      Text(
                        user.perMonth,
                        style: const TextStyle(
                          fontWeight: FontWeight.w200,
                          fontSize: 10,
                          color: Colors.white,
                        ),
                        textAlign: TextAlign.center,
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
