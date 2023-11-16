import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:desain_utsadi/helpers/colors.dart';

class DrawerScreen extends StatelessWidget {
  const DrawerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final res_width = MediaQuery.of(context).size.width;
    final res_height = MediaQuery.of(context).size.height;
    return Container(
      width: double.infinity,
      child: ListView(
        padding: EdgeInsets.only(left: 25, right: 10),
        children: [
          SizedBox(
            height: res_height * 0.075,
          ),
          Align(
            alignment: Alignment.topRight,
            child: GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: Container(
                decoration: BoxDecoration(
                  color: ksecondarycolor,
                  borderRadius: BorderRadius.all(Radius.circular(25))),
                  child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Icon(
                      Icons.close,
                      color: Colors.white,
                      size: 30,
                  ),
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.topLeft,
            child: SizedBox(
              height: 60,
              child: Image.asset(
                'assets/Images/user.png',
              ),
            ),
          ),
          SizedBox(
            height: res_height * 0.0175,
          ),
          Text(
            "Ghulam",
            style: Theme.of(context).textTheme.headlineSmall,
          ),
          Text(
            "UX UI Designer",
            style: Theme.of(context).textTheme.titleMedium,
          ),
          SizedBox(
            height: res_height * 0.04,
          ),
          DrawerItem(
            text: "Corporate APP",
            image: 'assets/images/corporation.png',
          ),
          DrawerItem(
            text: "Security Settings",
            image: 'assets/images/policeman.png',
          ),
          DrawerItem(
            text: "Online Shopping",
            image: 'assets/images/Shopping-cart.png',
          ),
          DrawerItem(
            text: "Groceris",
            image: 'assets/images/food.png',
          ),
          DrawerItem(
            text: "Utilities",
            image: 'assets/images/tools.png',
          ),
          DrawerItem(
            text: "Thumb Scanner",
            image: 'assets/images/scanner.png',
          ),
        ],
      ),
    );
  }
}

class DrawerItem extends StatelessWidget {
  final text;
  final image;
  const DrawerItem({super.key, required this.text, required this.image});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.zero,
      leading: Image.asset(
        image,
        color: Colors.white,
        width: 30,
        height: 30,
      ),
      onTap: () {
        Navigator.pop(context);
      },
      title: text(text, style: Theme.of(context).textTheme.bodyMedium),
    );
  }
}