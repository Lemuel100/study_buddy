import 'package:flutter/material.dart';
import 'package:flutter_slider_drawer/flutter_slider_drawer.dart';

class CustomAppBar extends StatelessWidget {
  final VoidCallback open;

  const CustomAppBar({super.key, required this.open});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        padding: const EdgeInsets.all(8),
        color: Color.fromARGB(255, 230, 229, 229),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              padding: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                  color: Color.fromARGB(255, 3, 68, 121),
                  borderRadius: BorderRadius.circular(20)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  const Icon(
                    Icons.home,
                    color: Colors.redAccent,
                    size: 15,
                  ),
                  Text(
                    "Home",
                    style: Theme.of(context)
                        .textTheme
                        .headline6!
                        .copyWith(color: Colors.redAccent, fontSize: 12),
                  ),
                ],
              ),
            ),
            Text(
              "Study Buddy",
              style: Theme.of(context)
                  .textTheme
                  .headline5!
                  .copyWith(color: Colors.white),
            ),
            IconButton(onPressed: open, icon: const Icon(Icons.menu))
          ],
        ),
      ),
    );
  }
}
