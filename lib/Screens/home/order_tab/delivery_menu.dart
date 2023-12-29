import 'package:flutter/material.dart';

class DeliveryMenu extends StatefulWidget {
  const DeliveryMenu({Key? key}) : super(key: key);

  @override
  State<DeliveryMenu> createState() => _DeliveryMenuState();
}

class _DeliveryMenuState extends State<DeliveryMenu> {

  bool _isCheckedD1 = false;
  bool _isCheckedD2 = false;
  bool _isCheckedD3 = false;
  bool _isCheckedD4 = false;
  bool _isCheckedD5 = false;
  bool _isCheckedD6 = false;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          centerTitle: true,
          leading: IconButton(
            icon: Icon(Icons.arrow_back_ios_new_rounded,
                color: Colors.teal.shade800),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          title: Text(
            "Delivery Menu",
            style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w500,
                color: Colors.teal.shade800),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(12.0),
          child: ListView(
            children: [
              Container(
                padding: const EdgeInsets.all(5),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: Colors.grey.shade200),
                child: const Text(
                  "Meals Changes, Pause And Resume Can Be Made 3 Days \nIn Advance",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontWeight: FontWeight.w300,
                      fontSize: 15,
                      color: Colors.black),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Container(
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: Colors.teal.shade900,
                ),
                child: Row(
                  children: const [
                    Text(
                      "22-10-2022",
                      style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 15,
                          color: Colors.white),
                    ),
                    Spacer(),
                    Icon(
                      Icons.mode_edit_outlined,
                      color: Colors.white,
                    ),
                    Text(
                      "Edit The Date For This Date",
                      style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 15,
                          color: Colors.white),
                    ),
                  ],
                ),
              ),
              Container(
                padding: const EdgeInsets.all(2),
                margin: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.yellow.shade700),
                  borderRadius: BorderRadius.circular(5),
                ),
                child: Row(
                  children: [
                    Checkbox(
                      side: BorderSide(color: Colors.yellow.shade700),
                      activeColor: Colors.amber.shade900,
                      checkColor: Colors.amber.shade900,
                      value: _isCheckedD1,
                      onChanged: (bool? value) {
                        setState(() {
                          _isCheckedD1= !_isCheckedD1;
                        });
                      },
                    ),
                    const Spacer(),
                    const Text(
                      "Day 1 - (Tuesday)",
                      style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 15,
                          color: Colors.black),
                    ),
                    const Spacer(),
                    Icon(
                      Icons.lock_open_outlined,
                      color: Colors.yellow.shade700,
                    )
                  ],
                ),
              ),
              Container(
                padding: const EdgeInsets.all(2),
                margin: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.yellow.shade700),
                  borderRadius: BorderRadius.circular(5),
                ),
                child: Row(
                  children: [
                    Checkbox(
                      side: BorderSide(color: Colors.yellow.shade700),
                      activeColor: Colors.amber.shade900,
                      checkColor: Colors.amber.shade900,
                      value: _isCheckedD2,
                      onChanged: (bool? value) {
                        setState(() {
                          _isCheckedD2 = !_isCheckedD2;
                        });
                      },
                    ),
                    const Spacer(),
                    const Text(
                      "Day 1 - (Tuesday)",
                      style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 15,
                          color: Colors.black),
                    ),
                    const Spacer(),
                    Icon(
                      Icons.lock_open_outlined,
                      color: Colors.yellow.shade700,
                    )
                  ],
                ),
              ),
              Container(
                padding: const EdgeInsets.all(2),
                margin: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.yellow.shade700),
                  borderRadius: BorderRadius.circular(5),
                ),
                child: Row(
                  children: [
                    Checkbox(
                      side: BorderSide(color: Colors.yellow.shade700),
                      activeColor: Colors.amber.shade900,
                      checkColor: Colors.amber.shade900,
                      value: _isCheckedD3,
                      onChanged: (bool? value) {
                        setState(() {
                          _isCheckedD3 = !_isCheckedD3;
                        });
                      },
                    ),
                    const Spacer(),
                    const Text(
                      "Day 1 - (Tuesday)",
                      style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 15,
                          color: Colors.black),
                    ),
                    const Spacer(),
                    Icon(
                      Icons.lock_open_outlined,
                      color: Colors.yellow.shade700,
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Container(
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: Colors.teal.shade900,
                ),
                child: Row(
                  children: const [
                    Text(
                      "22-10-2022",
                      style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 15,
                          color: Colors.white),
                    ),
                    Spacer(),
                    Icon(
                      Icons.mode_edit_outlined,
                      color: Colors.white,
                    ),
                    Text(
                      "Edit The Date For This Date",
                      style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 15,
                          color: Colors.white),
                    ),
                  ],
                ),
              ),
              Container(
                padding: const EdgeInsets.all(2),
                margin: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.yellow.shade700),
                  borderRadius: BorderRadius.circular(5),
                ),
                child: Row(
                  children: [
                    Checkbox(
                      side: BorderSide(color: Colors.yellow.shade700),
                      activeColor: Colors.amber.shade900,
                      checkColor: Colors.amber.shade900,
                      value: _isCheckedD4,
                      onChanged: (bool? value) {
                        setState(() {
                          _isCheckedD4 = !_isCheckedD4;
                        });
                      },
                    ),
                    const Spacer(),
                    const Text(
                      "Day 1 - (Tuesday)",
                      style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 15,
                          color: Colors.black),
                    ),
                    const Spacer(),
                    Icon(
                      Icons.lock_open_outlined,
                      color: Colors.yellow.shade700,
                    )
                  ],
                ),
              ),
              Container(
                padding: const EdgeInsets.all(2),
                margin: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.yellow.shade700),
                  borderRadius: BorderRadius.circular(5),
                ),
                child: Row(
                  children: [
                    Checkbox(
                      side: BorderSide(color: Colors.yellow.shade700),
                      activeColor: Colors.amber.shade900,
                      checkColor: Colors.amber.shade900,
                      value: _isCheckedD5,
                      onChanged: (bool? value) {
                        setState(() {
                          _isCheckedD5 = !_isCheckedD5;
                        });
                      },
                    ),
                    const Spacer(),
                    const Text(
                      "Day 1 - (Tuesday)",
                      style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 15,
                          color: Colors.black),
                    ),
                    const Spacer(),
                    Icon(
                      Icons.lock_open_outlined,
                      color: Colors.yellow.shade700,
                    )
                  ],
                ),
              ),
              Container(
                padding: const EdgeInsets.all(2),
                margin: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.yellow.shade700),
                  borderRadius: BorderRadius.circular(5),
                ),
                child: Row(
                  children: [
                    Checkbox(
                      side: BorderSide(color: Colors.yellow.shade700),
                      activeColor: Colors.amber.shade900,
                      checkColor: Colors.amber.shade900,
                      value: _isCheckedD6,
                      onChanged: (bool? value) {
                        setState(() {
                          _isCheckedD6 = !_isCheckedD6;
                        });
                      },
                    ),
                    const Spacer(),
                    const Text(
                      "Day 1 - (Tuesday)",
                      style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 15,
                          color: Colors.black),
                    ),
                    const Spacer(),
                    Icon(
                      Icons.lock_open_outlined,
                      color: Colors.yellow.shade700,
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Container(
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        border: Border.all(color: Colors.yellow.shade700)),
                    child: Center(
                      child: Text(
                        "Prveious",
                        style: TextStyle(
                            fontWeight: FontWeight.w500,
                            color: Colors.amber.shade400,
                            fontSize: 18),
                      ),
                    ),
                  ),
                  const Spacer(),
                  Text(
                    "1/4",
                    style: TextStyle(
                        fontWeight: FontWeight.w500,
                        color: Colors.amber.shade400,
                        fontSize: 18),
                  ),
                  const Spacer(),
                  Container(
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        border: Border.all(color: Colors.yellow.shade700)),
                    child: Center(
                      child: Text(
                        "Next",
                        style: TextStyle(
                            fontWeight: FontWeight.w500,
                            color: Colors.amber.shade400,
                            fontSize: 18),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              InkWell(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Container(
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: Colors.teal.shade800),
                  child: Center(
                    child: Text(
                      "SAVE AND EXIT",
                      style: TextStyle(
                          fontWeight: FontWeight.w500,
                          color: Colors.amber.shade400,
                          fontSize: 18),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
