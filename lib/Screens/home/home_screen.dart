import 'package:flutter/material.dart';
import 'package:gastro_app/Screens/home/calculate_tab/calculate_tab.dart';
import 'package:gastro_app/Screens/home/faq_tab/faq_tab.dart';
import 'package:gastro_app/Screens/home/home_tab/home_tab.dart';

import 'package:gastro_app/Screens/home/order_tab/my_order_tab.dart';
import 'package:gastro_app/Screens/home/reusable_ListTiles.dart';
import 'package:gastro_app/Screens/home/reusable_container.dart';
import 'package:gastro_app/Screens/home/setting_and_info/setting_info.dart';
import 'package:gastro_app/Screens/home/user_guide_tab/user_guide_tab.dart';
import 'package:gastro_app/Screens/log_In/log_in_screen.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final _Skey = GlobalKey<ScaffoldState>();

  int _currentIndex = 1;
  bool _switchValue = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        key: _Skey,
        backgroundColor: Colors.white,
        drawer: Drawer(
          child: ListView(
            children: <Widget>[
              const SizedBox(
                height: 90,
              ),
              ListTile(
                leading: const Icon(
                  Icons.language_rounded,
                  color: Colors.blueGrey,
                ),
                trailing: Switch(
                  inactiveThumbColor: Colors.amber.shade700,
                  activeColor: Colors.amber.shade700,
                  value: _switchValue,
                  onChanged: (bool newValue) {
                    setState(() {
                      _switchValue = !_switchValue;
                    });
                    // Add your desired logic here when the switch value changes
                  },
                ),
                title: Text(
                  'Language',
                  style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 18,
                      color: Colors.grey.shade700),
                ),
              ),
              ListTile(
                leading:
                    const Icon(Icons.home_outlined, color: Colors.blueGrey),
                title: Text(
                  'Home',
                  style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 18,
                      color: Colors.grey.shade700),
                ),
                onTap: () {
                  setState(() {
                    _currentIndex = 1;
                    Navigator.pop(context);
                  });
                },
              ),
              ListTile(
                leading: const Image(
                  height: 30,
                  width: 30,
                  image: AssetImage("Assets/icons/home/order.png"),
                ),
                title: Text(
                  'My Orders',
                  style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 18,
                      color: Colors.grey.shade700),
                ),
                onTap: () {
                  setState(() {
                    _currentIndex = 2;
                    Navigator.pop(context);
                  });
                },
              ),
              ListTile(
                leading: const Icon(Icons.help_outline_outlined,
                    color: Colors.blueGrey),
                title: Text(
                  'FAQ',
                  style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 18,
                      color: Colors.grey.shade700),
                ),
                onTap: () {
                  setState(() {
                    _currentIndex = 3;
                    Navigator.pop(context);
                  });
                },
              ),
              ListTile(
                leading: const Image(
                  height: 30,
                  width: 30,
                  image: AssetImage("Assets/icons/home/calculator.png"),
                ),
                title: Text(
                  'Calorie Calculator',
                  style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 18,
                      color: Colors.grey.shade700),
                ),
                onTap: () {
                  setState(() {
                    _currentIndex = 4;
                    Navigator.pop(context);
                  });
                },
              ),
              ListTile(
                leading:
                    const Icon(Icons.settings_outlined, color: Colors.blueGrey),
                title: Text(
                  'Setting & Info',
                  style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 18,
                      color: Colors.grey.shade700),
                ),
                onTap: () {
                  setState(() {
                    _currentIndex = 5;
                    Navigator.pop(context);
                  });
                },
              ),
              ListTile(
                leading: const Image(
                  height: 30,
                  width: 30,
                  image: AssetImage("Assets/icons/home/chat.png"),
                ),
                title: Text(
                  'Chat With Us',
                  style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 18,
                      color: Colors.grey.shade700),
                ),
                onTap: () {
                  setState(() {
                    _currentIndex = 6;
                    Navigator.pop(context);
                  });
                },
              ),
              ListTile(
                leading: const Image(
                  height: 30,
                  width: 30,
                  image: AssetImage("Assets/icons/home/user.png"),
                ),
                title: Text(
                  'User Guide',
                  style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 18,
                      color: Colors.grey.shade700),
                ),
                onTap: () {
                  setState(() {
                    _currentIndex = 7;
                    Navigator.pop(context);
                  });
                },
              ),
              ListTile(
                leading: const Image(
                  height: 30,
                  width: 30,
                  image: AssetImage("Assets/icons/home/share.png"),
                ),
                title: Text(
                  'Share The App',
                  style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 18,
                      color: Colors.grey.shade700),
                ),
                onTap: () {
                  setState(() {
                    _currentIndex = 8;
                    Navigator.pop(context);
                  });
                },
              ),
              ListTile(
                leading:
                    const Icon(Icons.logout_outlined, color: Colors.blueGrey),
                title: Text(
                  'Log Out',
                  style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 18,
                      color: Colors.grey.shade700),
                ),
                onTap: () {
                  setState(() {
                    _currentIndex = 9;
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const LogInScreen()));
                  });
                },
              ),
              const SizedBox(
                height: 20,
              ),
              const Center(
                child: Image(
                  width: 210,
                  height: 80,
                  image: AssetImage("Assets/icons/home/madeIn.png"),
                ),
              ),
            ],
          ),
        ),
        appBar: AppBar(
          leading: IconButton(
            onPressed: () {
              setState(() {
                _Skey.currentState!.openDrawer();
              });
            },
            icon: _currentIndex == 4
                ? Icon(
                    Icons.menu,
                    color: Colors.amber.shade400,
                  )
                : _currentIndex == 3
                    ? Icon(
                        Icons.menu,
                        color: Colors.amber.shade400,
                      )
                    : _currentIndex == 7
                        ? Icon(
                            Icons.arrow_back_ios,
                            color: Colors.teal.shade400,
                          )
                        : _currentIndex == 5
                            ? Icon(
                                Icons.arrow_back_ios,
                                color: Colors.teal.shade400,
                              )
                            : Icon(
                                Icons.menu,
                                color: Colors.amber.shade400,
                              ),
          ),
          backgroundColor: Colors.white,
          elevation: 0,
          centerTitle: true,
          title: _currentIndex == 4
              ? Text(
                  "Calorie Calculator",
                  style: TextStyle(
                      fontWeight: FontWeight.w600, color: Colors.teal.shade700),
                )
              : _currentIndex == 3
                  ? Text(
                      "FAQ",
                      style: TextStyle(
                          fontWeight: FontWeight.w600,
                          color: Colors.teal.shade700),
                    )
                  : _currentIndex == 5
                      ? Text(
                          "Setting And Info",
                          style: TextStyle(
                              fontWeight: FontWeight.w600,
                              color: Colors.teal.shade700),
                        )
                      : _currentIndex == 7
                          ? Text(
                              "User Guide",
                              style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  color: Colors.teal.shade700),
                            )
                          : _currentIndex == 2
                              ? Text(
                                  "My Orders",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w600,
                                      color: Colors.teal.shade700),
                                )
                              : TextField(
                                  style: const TextStyle(color: Colors.black),
                                  decoration: InputDecoration(
                                      prefixIcon: Icon(
                                        Icons.search,
                                        color: Colors.amber.shade400,
                                      ),
                                      filled: true,
                                      fillColor: Colors.grey.shade200,
                                      hintText: "Search",
                                      border: OutlineInputBorder(
                                        borderSide: BorderSide.none,
                                        borderRadius: BorderRadius.circular(17),
                                      ),
                                      focusedBorder: UnderlineInputBorder(
                                        borderSide: BorderSide.none,
                                        borderRadius: BorderRadius.circular(17),
                                      ),
                                      enabledBorder: UnderlineInputBorder(
                                        borderSide: BorderSide.none,
                                        borderRadius: BorderRadius.circular(17),
                                      )),
                                ),
        ),
        body: ListView(
          children: [
            _currentIndex == 1
                ? const HomeTabScreen()
                : _currentIndex == 2
                    ? const MyOrderScreen()
                    : _currentIndex == 3
                        ? const FaqTabScreen()
                        : _currentIndex == 4
                            ? const CalorieCalculator()
                            : _currentIndex == 5
                                ? const SettingAndInfo()
                                : _currentIndex == 6
                                    ? Container()
                                    : _currentIndex == 7
                                        ? const UserGuideScreen()
                                        : _currentIndex == 8
                                            ? Container()
                                            : Container()
          ],
        ),
      ),
    );
  }
}
