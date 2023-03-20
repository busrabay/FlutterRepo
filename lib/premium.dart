import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:premium_flutter/container.dart';
import 'package:premium_flutter/containlist.dart';
import 'package:premium_flutter/controllers/home_controller.dart';
import 'package:premium_flutter/listbox.dart';
import 'package:premium_flutter/users.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    User selectedUser = User.myUsers.first;
    final controller = Get.put(HomeController());
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        centerTitle: true,
        leading: const Icon(
          Icons.arrow_back_ios_new_rounded,
          color: Color(0xff787878),
        ),
        title: const Text(
          "Premium",
          style: TextStyle(fontWeight: FontWeight.w600, fontSize: 15, color: Color(0xff787878)),
        ),
      ),
      backgroundColor: Colors.black,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: SingleChildScrollView(
          child: Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: Column(
                children: [
                  Container(
                    width: 109,
                    height: 109,
                    decoration: BoxDecoration(
                      color: Colors.transparent,
                      boxShadow: const [
                        BoxShadow(
                          color: Colors.purple,
                          blurRadius: 10.0,
                          spreadRadius: 5.0,
                        )
                      ],
                      border: Border.all(
                        color: Colors.purple,
                        width: 5,
                      ),
                      shape: BoxShape.circle,
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Icon(
                          Icons.lock_open_outlined,
                          size: 50,
                          color: Colors.white,
                        )
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  const Text(
                    "Unlock Premium Features",
                    style: TextStyle(fontWeight: FontWeight.w800, fontSize: 25, color: Colors.white),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: Text(
                      "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. ",
                      style: TextStyle(fontWeight: FontWeight.w400, fontSize: 15, color: Color(0xff787878)),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Obx(
                    () => Column(
                      children: [
                        //kv.value user'a     ----     kv.key user'ın indexini verir.
                        ...User.myUsers.asMap().entries.map(
                              (kv) => MyContainer(
                                user: kv.value,
                                onTap: () {
                                  controller.selectedContainer.value = kv.key;
                                },
                                color: kv.key == controller.selectedContainer.value
                                    ? Colors.purple
                                    : const Color(0xff1C1C1C),
                              ),
                            ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  Row(
                    children: const [
                      Padding(
                        padding: EdgeInsets.only(left: 20),
                        child: Text(
                          "Premium Features",
                          style: TextStyle(fontWeight: FontWeight.w500, fontSize: 20, color: Colors.white),
                        ),
                      ),
                      SizedBox(
                        width: 50,
                      ),
                      Text(
                        "Premium",
                        style: TextStyle(fontWeight: FontWeight.w300, fontSize: 15, color: Color(0xff787878)),
                      ),
                      SizedBox(
                        width: 28,
                      ),
                      Text(
                        "Free",
                        style: TextStyle(fontWeight: FontWeight.w300, fontSize: 15, color: Color(0xff787878)),
                      ),
                      SizedBox(height: 50),
                    ],
                  ),
                  ...Contain.myContain.map((e) => MyBox(contain: e)),
                  const Align(
                    alignment: Alignment.bottomCenter,
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                    child: Text(
                      "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.",
                      style: TextStyle(fontWeight: FontWeight.w400, fontSize: 15, color: Color(0xff787878)),
                    ),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  SizedBox(
                    width: 350,
                    height: 56,
                    child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(28),
                            ),
                            backgroundColor: const Color.fromARGB(255, 110, 22, 188)),
                        child: const Text("Unlock Premium",
                            style: TextStyle(fontWeight: FontWeight.w600, fontSize: 18, color: Colors.white))),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
