import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

class CustomDefaultAppBar extends StatelessWidget {
  final void Function()? onTap;
  const CustomDefaultAppBar({
    Key? key,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      iconTheme: const IconThemeData(
        color: Colors.black,
      ),
      leading: Padding(
        padding: const EdgeInsets.all(
          12.0,
        ),
        child: InkWell(
          onTap: onTap,
          child: Stack(
            children: [
              Image.asset(
                'assets/images/back1.png',
                height: 100,
              ),
            ],
          ),
        ),
      ),
      title: Center(
        child: AutoSizeText(
          "Invoice Me",
          style: TextStyle(
            fontSize: 16,
            color: Colors.grey[600],
          ),
        ),
      ),
    );
  }
}
